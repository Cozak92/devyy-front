import 'package:devyy_front/pages/splashPage.dart';
import 'package:flutter/material.dart';
import 'package:devyy_front/pages/devvyHomePage.dart';

void main() {
  runApp(const Devyy());
}

class Devyy extends StatelessWidget {
  const Devyy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Devyy',
      home: Splash()
      //const DevvyHomePage(title: 'Devyy'),
    );
  }
}

