import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/login/login.dart';

class Open_splash extends StatefulWidget {
  const Open_splash({Key? key}) : super(key: key);

  @override
  State<Open_splash> createState() => _Open_splashState();
}

class _Open_splashState extends State<Open_splash> {
  bool _showIndicator = false;

  @override
  void initState() {
    super.initState();
    _startSplash(); // Start the splash animation
  }

  void _startSplash() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showIndicator = true; // Show CircularProgressIndicator
      });
      _navigateToLogin(); // After a certain duration, navigate to the login screen
    });
  }

  void _navigateToLogin() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!_showIndicator) // Show Lottie animation and text during the splash screen
                Column(
                  children: [
                    Lottie.asset('assets/splashscreen.json'),
                    SizedBox(height: 20),
                    Text(
                      'Vista Quest', // Highlighted text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Let's Explore the World Together", // Subtext
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              if (_showIndicator) // Show CircularProgressIndicator and "Please wait..." text when it's time
                Column(
                  children: [
                    CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Please wait...', // Text indicating loading
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}















