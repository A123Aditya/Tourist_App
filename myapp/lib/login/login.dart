import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/firebase/google_method.dart';
import 'package:myapp/screen/emailreg.dart';





class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
final Google_method _googleMethod = Google_method();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: 
            AssetImage('assets/maayan-nemanov-Xs3BnTN_vvU-unsplash.jpg'),
            fit: BoxFit.cover
            )
            
          ),
          //color: Color.fromARGB(26, 173, 40, 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.topCenter,
                      child: Lottie.asset('assets/earth.json'),
                    ),
                    Text('Vista Quest',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50,color:Colors.black87)),
                    const Text('Made by Travelers for Travelers',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20,color: Colors.black)),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),


                  // Google Sign In

                  child: InkWell(
                    onTap: ()  {
                     Google_method().handleSignIn(context);
                      
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Google Sign In',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 252,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),



                  // Email Sign in


                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Emailreg()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Email Sign In',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),



                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


