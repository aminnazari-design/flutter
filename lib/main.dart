// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameApllication(),
      theme: ThemeData(fontFamily: 'vazir'),
    );
  }
}
