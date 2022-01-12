import 'package:flutter/material.dart';
import 'package:devyy_front/home/devvyHomePage.dart';

void main() {
  runApp(const Devyy());
}

class Devyy extends StatelessWidget {
  const Devyy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devyy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DevvyHomePage(title: 'Devyy'),
    );
  }
}

