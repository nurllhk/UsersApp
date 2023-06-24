

import 'package:flutter/material.dart';

class TitleDetail extends StatelessWidget
{
  const TitleDetail({
    super.key,
    required this.userList,
    required this.index,
    required this.text
    ,required this.indexname
  });

  final List userList;
  final int index;
  final String text;
  final String indexname;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
       Text(
          text,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Text(
          indexname,

        )
      ],
    );
  }
}