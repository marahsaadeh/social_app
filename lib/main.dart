import 'package:flutter/material.dart';
import 'package:social_app/responsive/mobile.dart';
import 'package:social_app/responsive/responsive.dart';
import 'package:social_app/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Resposive(
        myMobileScreen: MobileScerren(),
        myWebScreen: WebScerren(),
      ),
    );
  }
}