import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/api/Hotelapi.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {

 TextEditingController _hotelname = TextEditingController();
 final hotel_api=Hotelservice();

  void _showAwesomeHotelDialog() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.topSlide,
      title: 'Enter State/City Name',
      body: Column(
        children: [
          TextField(
            controller: _hotelname,
            decoration: InputDecoration(
              labelText: 'Enter State/City Name',
              labelStyle: TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String Address = _hotelname.text;
              hotel_api.fetch_hotel(Address);
              // Do something with the trainName
              Navigator.pop(context); // Close the dialog
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text(
              'Get Details',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    )..show();
  }

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          _showAwesomeHotelDialog();
        },
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
                  FontAwesomeIcons.hotel,
                  size: 50,
                  color: Colors.orange,
                ),
                SizedBox(height: 5),
                Text(
                  'Hotels',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}