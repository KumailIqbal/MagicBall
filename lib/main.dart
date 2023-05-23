import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 2;
  void changeBall() {
    ballNumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      backgroundColor: Colors.blue,
      body: InkWell(
        onTap: () {
          setState(() {
            changeBall();
          });
        },
        child: Center(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
