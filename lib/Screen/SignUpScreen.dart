import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'CustomButtonScreen.dart';
import 'LoginScreen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/p1.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/p2.png"),
            fit: BoxFit.fill,
          )),
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 20, top: 180),
          child: Column(children: [
            Text(
              "Your Skin Journey Start Here!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 210),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Username",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 270),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Email",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 330),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Number",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 390),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Password",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 450),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Confirm Password",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 520),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              title: "Sign Up",
              btcolor: Color(0xff39D5B0),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 580),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              title: "Sign in with Google",
              txtcolor: Colors.black,
              btcolor: Colors.white,
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 630),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              title: "Sign in with Facebook",
              txtcolor: Colors.black,
              btcolor: Colors.white,
            ),
          ]),
        ),
        Container(
            margin: EdgeInsets.only(left: 260, top: 680),
            child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: Text('Sign In'))),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 40, top: 690),
                child: Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
