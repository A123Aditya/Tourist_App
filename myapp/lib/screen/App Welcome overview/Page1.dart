import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(80),
                color: Colors.transparent,
                child: Lottie.asset(
                    'assets/Page view animation/Map animation.json'),
              ),
            ],
          ),
        ),
        Expanded(
          child: Card(
            margin: EdgeInsets.all(45),
            color: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Discover the World',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(color: Colors.indigo, offset: Offset(5, 5))
                        ]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'All Your Travel Needs in One Place',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
