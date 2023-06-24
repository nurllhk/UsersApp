import 'package:flutter/cupertino.dart';

class Palet {
  String API = "https://jsonplaceholder.typicode.com/users";

  Color backgroundColor = const Color.fromRGBO(189, 159, 233, 1);
  Color barColor = const Color.fromRGBO(123, 63, 211, 1);
  Color buttonColor = const Color.fromRGBO(90, 15, 200, 1);
  Color profileColor = const Color.fromRGBO(173, 135, 228, 1);
  BorderRadius radius = BorderRadius.circular(20);
  BorderRadius outsideRadius=const BorderRadius.only(bottomRight: Radius.circular(1000),bottomLeft: Radius.circular(1000));
  BorderRadius radiusButton = BorderRadius.circular(5);
  BorderRadius profileRadius = const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(110),
      bottomRight: Radius.circular(110));
  TextStyle textStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
}
