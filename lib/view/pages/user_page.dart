import 'package:flutter/material.dart';
import 'package:users/core/default.dart';

import '../widget/rich_detail_text.dart';
import '../widget/title_detail.dart';

class UserProfile extends StatelessWidget {
  final int index;
  final List userList;
  final Palet ui;

  const UserProfile(this.index, this.userList, this.ui, {super.key});

  @override
  Widget build(BuildContext context) {
    var adres = userList[index].address;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            decoration:
                BoxDecoration(borderRadius: ui.radius, color: Colors.white),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.9,
                        decoration: BoxDecoration(
                            color: ui.profileColor,
                            borderRadius: ui.profileRadius),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/profile.png'),
                          radius: 60,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 80,
                        right: 0,
                        child: Align(
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: ui.buttonColor,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Column(
                      children: [
                        RichDetail(
                          userList: userList,
                          index: index,
                          text: 'Username: ',
                          indexname: userList[index].username,
                        ),
                        RichDetail(
                          userList: userList,
                          index: index,
                          text: 'Full Name: ',
                          indexname: userList[index].name,
                        ),
                        RichDetail(
                          userList: userList,
                          index: index,
                          text: 'Website: ',
                          indexname: userList[index].website,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Company',
                                  style: ui.textStyle,
                                ),
                                Text(userList[index].company.name),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: 'Catch Phrase: ',
                                  indexname:
                                      userList[index].company.catchPhrase,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact',
                                  style: ui.textStyle,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: 'Phone: ',
                                  indexname: userList[index].phone,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: 'Email: ',
                                  indexname: userList[index].email,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: 'Adress: ',
                                  indexname: '${adres.street},'
                                      '${adres.suite},'
                                      '${adres.city},'
                                      '${adres.zipcode}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
