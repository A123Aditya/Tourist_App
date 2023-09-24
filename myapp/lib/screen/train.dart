import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/api/Trainapi.dart';

class Train extends StatefulWidget {
  const Train({Key? key}) : super(key: key);

  @override
  State<Train> createState() => _TrainState();
}

class _TrainState extends State<Train> {
  final train = TrainService();
  TextEditingController _trainNameController = TextEditingController();

  void _showAwesomeDialog() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.topSlide,
      title: 'Enter Train Name',
      body: Column(
        children: [
          TextField(
            controller: _trainNameController,
            decoration: InputDecoration(
              labelText: 'Enter Train Name',
              labelStyle: TextStyle(color: Colors.blue),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String trainName = _trainNameController.text;
              train.fetch_train(trainName);
              // Do something with the trainName
              Navigator.pop(context); // Close the dialog
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text(
              'Get Train',
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
          _showAwesomeDialog();
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
                  FontAwesomeIcons.train,
                  size: 50,
                  color: Colors.orange,
                ),
                SizedBox(height: 5),
                Text(
                  'Trains/Bus',
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
  }



}
