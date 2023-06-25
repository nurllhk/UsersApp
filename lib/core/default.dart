import 'package:flutter/cupertino.dart';

class Palet {
  static const Color backgroundColor = Color.fromRGBO(189, 159, 233, 1);
  static const Color barColor = Color.fromRGBO(123, 63, 211, 1);
  static const Color buttonColor = Color.fromRGBO(90, 15, 200, 1);
  static const Color profileColor = Color.fromRGBO(173, 135, 228, 1);
  static final BorderRadius radius = BorderRadius.circular(20);
  static const BorderRadius outsideRadius = BorderRadius.only(
      bottomRight: Radius.circular(1000), bottomLeft: Radius.circular(1000));
  static final BorderRadius radiusButton = BorderRadius.circular(5);
  static const BorderRadius profileRadius = BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(110),
      bottomRight: Radius.circular(110));
  static const TextStyle textStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
}

class DefaultKey {
  static const String username = 'Username: ';
  static const String fullname = 'Full Name: ';
  static const String website = 'Website: ';
  static const String company = 'Company ';
  static const String catchphrase = 'Catch Phrase: ';
  static const String contact = 'Contact ';
  static const String phone = 'Phone: ';
  static const String email = 'Email: ';
  static const String adress = 'Adress: ';
  static const String appname = 'USERS';
  static const String search = 'Search';
  static const String error = 'Error';
  static const String profilphoto = 'images/profile.png';
}
