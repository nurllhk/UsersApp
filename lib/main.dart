import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:users/view/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User App',
      theme: ThemeData(
scaffoldBackgroundColor: const Color.fromRGBO(189, 159, 233, 1),
        useMaterial3: true,
      ),
      home:const  MyHomePage(),
    );
  }
}
