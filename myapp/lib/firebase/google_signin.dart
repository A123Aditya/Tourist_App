import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../button/googlesignin.dart';
class Googlesignin {
   Future<void> handleGoogleSignIn(BuildContext context)  async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuth =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuth.accessToken,
          idToken: googleSignInAuth.idToken,
        );
        final UserCredential authResult =
            await FirebaseAuth.instance.signInWithCredential(credential);

        final User? user = authResult.user;
        if (user != null) {
          
          Navigator.pushReplacement(
            context as BuildContext,
            MaterialPageRoute(
                builder: (context) =>
                    Gmail_signin()), // Replace with your home screen
          );
          print("Google Sign-In Successful! User: ${user.displayName}");
        } else {
          print("Google Sign-In Failed");
        }
// Handle the auth result as needed.
      }
    } catch (error) {
      // Handle sign-in error.
    }
  }

}
