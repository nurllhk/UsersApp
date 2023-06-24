import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:users/core/services/user_services.dart';
import '../../core/default.dart';
import '../widget/User_List_Reque.dart';
import '../widget/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    super.initState();
  }

  Palet ui = Palet();
  List userList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: ui.radius, color: Colors.white),
            child: Column(
              children: [
                SearchTop(ui: ui),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: FutureBuilder(
                      future: DataService().userDownload(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          userList = snapshot.data!;

                          return SizedBox(
                              height: MediaQuery.of(context).size.height / 1.3,
                              child: UserListReque(userList: userList, ui: ui));
                        } else if (snapshot.hasError) {
                          showModalBottomSheet(
                              context: context,
                              builder: (c) {
                                return Center(
                                  child: Text(snapshot.hasError.toString()),
                                );
                              });
                        } else {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          );
                        }

                        return const Center();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
