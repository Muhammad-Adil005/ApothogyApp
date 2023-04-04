import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';

class WelcomeScreenPage extends StatefulWidget {
  const WelcomeScreenPage({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenPage> createState() => _WelcomeScreenPageState();
}

class _WelcomeScreenPageState extends State<WelcomeScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigatetologinScreen();
  }

  void _navigatetologinScreen() async {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreenPage()))));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/p1.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
            child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/p2.png"),
            fit: BoxFit.cover,
          )),
        )),
      ),
    );
  }
}
