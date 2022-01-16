import 'dart:async';
import 'package:flutter/material.dart';
import 'package:devyy_front/util/utils.dart';
import 'package:devyy_front/pages/devvyHomePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const DevvyHomePage(title: "Devyyyy")));
    });
  }

  @override
  Widget build(BuildContext context) {
    Utils utils = Utils();
    var format = 'yyyy';
    var year = utils.getDays(format);

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/splashBackground.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.3),
                const Image(image: AssetImage('assets/images/siteLogo.png')),
                const Expanded(child: SizedBox()),
                Align(
                  child: Text("© Copyright $year, Devyyyy",
                      style: TextStyle(
                          fontSize: screenWidth * (8 / 360),
                          color: const Color.fromARGB(255, 255, 255, 255))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0625,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
