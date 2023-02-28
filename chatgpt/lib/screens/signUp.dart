import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class singUp extends StatefulWidget {
  const singUp({super.key});

  @override
  State<singUp> createState() => _singUpState();
}

class _singUpState extends State<singUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Image.asset('assets/Login.png')
              ],
            ),
          )
        ],
      ),
    );
  }
}