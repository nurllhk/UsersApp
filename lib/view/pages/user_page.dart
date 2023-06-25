import 'package:flutter/material.dart';
import 'package:users/core/default.dart';

import '../widget/rich_detail_text.dart';
import '../widget/title_detail.dart';

class UserProfile extends StatelessWidget {
  final int index;
  final List userList;


  const UserProfile(this.index, this.userList, {super.key});

  @override
  Widget build(BuildContext context) {
    var adres = userList[index].address;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            decoration:
                BoxDecoration(borderRadius: Palet.radius, color: Colors.white),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.9,
                        decoration: const BoxDecoration(
                            color: Palet.profileColor,
                            borderRadius: Palet.profileRadius),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(DefaultKey.profilphoto),
                          radius: 60,
                        ),
                      ),
                    ),
                    const Positioned(
                        bottom: 10,
                        left: 80,
                        right: 0,
                        child: Align(
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Palet.buttonColor,
                              child:  Icon(
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
                          text: DefaultKey.username,
                          indexname: userList[index].username,
                        ),
                        RichDetail(
                          userList: userList,
                          index: index,
                          text: DefaultKey.fullname,
                          indexname: userList[index].name,
                        ),
                        RichDetail(
                          userList: userList,
                          index: index,
                          text: DefaultKey.email,
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
                                const Text(
                                  DefaultKey.company,
                                  style: Palet.textStyle,
                                ),
                                Text(userList[index].company.name),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: DefaultKey.catchphrase,
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
                                const Text(
                                  DefaultKey.contact,
                                  style: Palet.textStyle,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: DefaultKey.phone,
                                  indexname: userList[index].phone,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: DefaultKey.email,
                                  indexname: userList[index].email,
                                ),
                                TitleDetail(
                                  userList: userList,
                                  index: index,
                                  text: DefaultKey.adress,
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
