import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gmail_signin extends StatefulWidget {
  const Gmail_signin({super.key});

  @override
  State<Gmail_signin> createState() => _Gmail_signinState();
}

class _Gmail_signinState extends State<Gmail_signin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(title: Text('Welcome'),backgroundColor: Colors.black),
       ),
    );
  }
}