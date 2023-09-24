import 'package:flutter/material.dart';
import 'package:myapp/api/Trainapi.dart';

class Details extends StatefulWidget {
  final List<dynamic> data; // Add this line

  Details({required this.data, Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Train Details'),
      ),
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          final train = widget.data[index];
          return Card(
            elevation: 4,
            shadowColor: Colors.white,
            color: Colors.white10,
            child: ListTile(
              title: Text(
                  'Name: ${train['name']}\nFrom: ${train['train_from']}  To ${train['train_to']}  \nArrival Time: ${train['arriveTime']}   Departure Time: ${train['departTime']} ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400)),

              subtitle: Text('Train Number: ${train['train_num']}    ',
                  style: TextStyle(color: Colors.black)),
              // Add more details you want to display here
            ),
          );
        },
      ),
    );
  }
}
