import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/screen/train%20details/details.dart';
import 'package:myapp/screen/train.dart';


class TrainService {
  final traininput = Train();
  
  final String train_name = '';
 

  Future<void> fetch_train(String trainName) async {
    final uri = Uri.https('trains.p.rapidapi.com', '/');
    final response = await http.post(uri,
        headers: {
          'content-type': 'application/json',
          'X-RapidAPI-Key':
              '1bfb0081ecmshaa5e194f94ee1dfp106d44jsn67de0ebaec9d',
          'X-RapidAPI-Host': 'trains.p.rapidapi.com'
        },
        body: '{"search": "$trainName"}'); // Use the provided trainName
    if (response.statusCode == 200) {
      print('success');
      final List<dynamic> data = json.decode(response.body);
      
      print(data);
      // Open the details screen with the data
       Get.to(() => Details(data: data,));
    } else {
      print('unsuccessful');
    }
  }
}
