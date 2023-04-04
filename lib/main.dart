import 'package:flutter/material.dart';

import 'Screen/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreenPage(),
      //OrderPreviewScreenPage(),
      //CheckoutScreenPage(),
      //LoginScreen(),
      //OrderPreviewScreenPage(),
      //SelectFilterScreenPage(),
      //UploadScreenPage(),
      //EditAccountScreenPage(),
      //ProfileScreenPage(),
      //WelcomeScreenPage(),
      //HomeScreenPage(),
      //AddNewPhotoScreen(),
      //DetailScreenPage(),
      //HomeScreenPage(),
    );
  }
}
