import 'package:flutter/material.dart';
import 'package:myapp/screen/Discover%20by%20Intrest/quotes/Upload%20files/files.dart';

class View_all extends StatelessWidget {
  const View_all({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Text('welcome'),
            SizedBox(
              height: 20,
              width: 20,
            ),
              File_Picker(),
          ],
        ),
      ),
    );
  }
}
