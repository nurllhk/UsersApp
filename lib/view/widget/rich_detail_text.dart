
import 'package:flutter/material.dart';

class RichDetail extends StatelessWidget {
  const RichDetail({
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
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight:
                FontWeight.w500),
          ),
          TextSpan(
              text: indexname,
              style: const TextStyle(color: Colors.black)
          ),
        ],
      ),
    );
  }
}