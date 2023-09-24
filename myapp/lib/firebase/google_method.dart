import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Homepage/home1.dart';
import 'package:myapp/button/googlesignin.dart';
import 'package:myapp/firebase/googleauth.dart';
import 'package:myapp/screen/App%20Welcome%20overview/Combined_page.dart';

class Google_method{
  final AuthMethods _authMethods = AuthMethods();

  void handleSignIn(BuildContext context) async {
    User? user = await _authMethods.signInWithGoogle();

    if (user != null) {
      // Navigate to another page upon successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Cobined_page()),
      );
    } else {
      // Handle sign-in error
    }
  }
}