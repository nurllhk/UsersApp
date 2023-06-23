import 'package:flutter/material.dart';
import 'package:users/core/default.dart';
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
        padding: const EdgeInsets.all(13),
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height/11,
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 15),
                      child: CircleAvatar(),
                    ),
                    Center(
                        child: Text(userList[index].name,style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 1.0,
                    width: MediaQuery.of(context).size.width/1.3,
                    color: ui.barColor,
                  ),
                )
              ],
            ),
          );
        });
  }
}