import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'emailreg.dart';

class Newuser_RegisterScreen extends StatelessWidget {
  final emailtext=TextEditingController();

  final passwordtext=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Emailreg(),
              ),
            );
          },
        ),
        title: Text('Email Sign In'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Card(
            margin: EdgeInsets.all(20),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  _buildCard(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildCard(
                    child: TextFormField(
                      controller: emailtext,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildCard(
                    child: TextFormField(
                      controller: passwordtext,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailtext.text, password: passwordtext.text);
                       

                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Emailreg(),
                            ),
                          );
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: child,
      ),
    );
  }
}




