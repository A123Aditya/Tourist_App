import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Email_signin extends StatefulWidget {
  const Email_signin({super.key});

  @override
  State<Email_signin> createState() => _Email_signinState();
}

class _Email_signinState extends State<Email_signin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome')),
        
      ),
    );
  }
}