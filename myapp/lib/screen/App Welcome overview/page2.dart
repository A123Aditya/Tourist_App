import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.black,
                child: Text(
                  'Explore new things \nand open your mystery box\n of traveling!',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30,
                    shadows: [
                      Shadow(
                        blurRadius: 15.5,
                        color: Colors.redAccent,
                        offset: Offset(10.0, 10.0),
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
        Container(
          alignment: Alignment.bottomRight,
          width: 200,
          child: Transform.rotate(
            angle: -0.4,
            child: Column(
              children: [
                Lottie.asset('assets/Page view animation/Mistery box cat.json'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
