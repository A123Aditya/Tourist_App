import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/screen/Hotels%20detail/Hoteldetails.dart';

class Hotelservice{
  Future <void> fetch_hotel(String Address) async{
  
    final url = Uri.https('hotels4.p.rapidapi.com', '/locations/v3/search', {
      'q': '$Address',
    });
     final response = await http.get(url, headers: {
      'X-RapidAPI-Key': '1bfb0081ecmshaa5e194f94ee1dfp106d44jsn67de0ebaec9d',
      'X-RapidAPI-Host': 'hotels4.p.rapidapi.com',
    });
    if(response.statusCode==200){
      print('sucess');
      final Map<String,dynamic> data=json.decode(response.body);
      //print(data['sr']);
      List information =data['sr'];
      // for(int i=0;i<information.length;i++){
      //   print(information[i]['coordinates']);
      // }
      Get.to(Hotel_Details(data: information));
    }
  }
}