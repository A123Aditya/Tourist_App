import 'package:flutter/material.dart';
import 'package:myapp/api/quotes.dart';
import 'package:myapp/button/location.dart';
import 'package:myapp/screen/Discover%20by%20Intrest/categories.dart';
import 'package:myapp/screen/Discover%20by%20Intrest/quotes/generate.dart';
import 'package:myapp/screen/drawer1.dart';
import 'package:myapp/screen/pixelcard.dart';

class CountryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Best Places are here..',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
        drawer: Drawer1(),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Location_Button(),
                SizedBox(
                  height: 10,
                ),
                Pexelcard(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment:
                            Alignment.centerLeft, // Align text to the left
                        child: Text(
                          "Discover by Interest",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        final quotes = Quotes_api();
                        quotes.fetchQuotes();
                      },
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.arrow_circle_right_rounded,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Categories(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
