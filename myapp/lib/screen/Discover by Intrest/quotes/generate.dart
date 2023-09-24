import 'package:flutter/material.dart';
import 'package:myapp/api/quotes.dart';
import 'package:myapp/screen/Discover%20by%20Intrest/Intrest%20categories/viewall.dart';

class Quotes_Screen extends StatefulWidget {
  const Quotes_Screen({Key? key});

  @override
  State<Quotes_Screen> createState() => _Quotes_ScreenState();
}

class _Quotes_ScreenState extends State<Quotes_Screen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => View_all()), 
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    var quotes = Quotes_api();
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: FutureBuilder(
          future: quotes.fetchQuotes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                height: 20, // Set the height to adjust the size
                width: 20, // Set the width to adjust the size
                child: CircularProgressIndicator(
                  color: Colors.white,
                  // strokeWidth: 2.0, // Adjust the strokeWidth for the smaller size
                ),
              );
            } else {
              String text = snapshot.data.toString();
              return Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        textAlign:
                            TextAlign.center, // Align the text in the center
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
