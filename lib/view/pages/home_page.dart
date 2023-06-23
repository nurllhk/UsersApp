import 'package:flutter/material.dart';

import '../../core/default.dart';
import '../widget/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Palet ui = Palet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration:
              BoxDecoration(borderRadius: ui.radius, color: Colors.white),
          child: Column(
            children: [
              SearchTop(ui: ui)
            ],
          ),
        ),
      ),
    );
  }
}
