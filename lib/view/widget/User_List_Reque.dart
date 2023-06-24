import 'package:flutter/material.dart';
import 'package:users/core/default.dart';
import '../pages/user_page.dart';

class UserListReque extends StatelessWidget {
  const UserListReque({
    super.key,
    required this.userList,
    required this.ui,
  });

  final List userList;
  final Palet ui;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return UserProfile(index,userList,ui);
              }));
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 11,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                            userList[index].name,
                            style: ui.textStyle,
                          )),
                          Text(
                            userList[index].company.bs,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 21,
                          height: 21,
                          decoration: BoxDecoration(
                              color: ui.buttonColor,
                              borderRadius: ui.radiusButton),
                          child: Center(
                            child: Text(
                              userList[index].id.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.width / 1.3,
                      color: ui.barColor,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
