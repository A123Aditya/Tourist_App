import 'package:flutter/material.dart';

class Hotel_Details extends StatefulWidget {
  final List<dynamic> data;
  Hotel_Details({required this.data, Key? key}) : super(key: key);

  @override
  State<Hotel_Details> createState() => _Hotel_DetailsState();
}

class _Hotel_DetailsState extends State<Hotel_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          final hotel = widget.data[index];

          // Check if the necessary keys exist in the 'hotel' map
          final regionNames = hotel['regionNames'];
          final hotelAddress = hotel['hotelAddress'];
          final coordinates = hotel['coordinates'];

          return Card(
            elevation: 10,
            shadowColor: Colors.white,
            color: Colors.black,
            child: ListTile(
              title: Text(
                'Name: ${regionNames?['fullName'] ?? 'N/A'}\nShortName: ${regionNames?['shortName'] ?? 'N/A'}\nStreet: ${hotelAddress?['street'] ?? 'N/A'}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Coordinates: ${coordinates?['lat'] ?? 'N/A'}   ${coordinates?['long'] ?? 'N/A'}',
                style: TextStyle(color: Colors.white60),
              ),
            ),
          );
        },
      ),
    );
  }
}
