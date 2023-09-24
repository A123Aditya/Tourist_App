import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:myapp/screen/Discover%20by%20Intrest/quotes/generate.dart';




class Quotes_api {
  Future<String> fetchQuotes() async {
    final Uri url = Uri.https(
      'famous-quotes4.p.rapidapi.com',
      '/random',
      {'category': 'travel', 'count': '1'},
    );

    final response = await http.get(
      url,
      headers: {
        'X-RapidAPI-Key': '1bfb0081ecmshaa5e194f94ee1dfp106d44jsn67de0ebaec9d',
        'X-RapidAPI-Host': 'famous-quotes4.p.rapidapi.com',
      },
    );
    String quotetext='';

    if (response.statusCode == 200) {
      List<dynamic> quotesList = json.decode(response.body);   
   quotetext = quotesList[0]['text'];
   Get.to(Quotes_Screen());
        
  }
   return quotetext;
  
}
}
