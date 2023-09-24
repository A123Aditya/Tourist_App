import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: ListView(
        children: [
          Text('data')
        ],
      ),
    );
      
    
  }
}