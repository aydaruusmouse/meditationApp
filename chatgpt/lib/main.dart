import 'package:chatgpt/screens/homescreen.dart';
import 'package:chatgpt/screens/loginSreen.dart';
import 'package:chatgpt/screens/pages.dart';
import 'package:chatgpt/screens/signUp.dart';
import 'package:chatgpt/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
