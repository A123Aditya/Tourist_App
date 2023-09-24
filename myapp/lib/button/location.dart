import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/api/Trainapi.dart';
import 'package:myapp/screen/Hotels%20detail/Hotel.dart';

import 'package:myapp/screen/train.dart';

class Location_Button extends StatefulWidget {
  const Location_Button({super.key});

  @override
  State<Location_Button> createState() => _Location_ButtonState();
}

class _Location_ButtonState extends State<Location_Button> {
  
  final train    = TrainService();
  
 
  


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          
          Hotel(),

          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Null;
              },
              child: Hero(
                tag: 'Flights',
                child: Card(
                  color: Colors.transparent,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.plane, // Your desired icon here
                          size: 50,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Flights', // Replace with your location name
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Train(),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Null;
              },
              child: Hero(
                tag: 'Holiday detail',
                child: Card(
                  color: Colors.transparent,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons
                              .umbrellaBeach, // Your desired icon here
                          size: 50,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Holiday', // Replace with your location name
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
