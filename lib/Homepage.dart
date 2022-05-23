// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class GameApllication extends StatefulWidget {
  const GameApllication({Key? key}) : super(key: key);

  @override
  State<GameApllication> createState() => _GameApllicationState();
}

class _GameApllicationState extends State<GameApllication> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text('سنگ    کاغذ   قیچی'),
        centerTitle: true,
        // titleSpacing: 80.0,
        toolbarHeight: 80,
        backgroundColor: Colors.orange[900],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _gameimplementation();
                    });
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _gameimplementation() {
    top = Random().nextInt(3) + 1;
    bottom = Random().nextInt(3) + 1;
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int top = 1;
    int bottom = 1;
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text('سنگ    کاغذ   قیچی'),
        centerTitle: true,
        // titleSpacing: 80.0,
        toolbarHeight: 80,
        backgroundColor: Colors.orange[900],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image(
                image: AssetImage('images/$top.png'),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'شروع بازی',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Image(
                image: AssetImage('images/$bottom.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
