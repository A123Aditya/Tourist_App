import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Homepage/home1.dart';
import 'Emailauth.dart';

class Method {
  Future<void> signInAndNavigate(
      BuildContext context, String email, String password) async {
    final authService = AuthService();
    User? user = await authService.signInWithEmailAndPassword(email, password);

    if (user != null) {
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Home_1()), 
      );
    } else {
      print(
          'not logged in'); 
    }
  }
}
