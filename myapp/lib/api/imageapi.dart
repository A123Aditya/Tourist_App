import 'dart:convert';
import 'package:http/http.dart' as http;

class Image_api {
  Future<List<dynamic>> fetchImage() async {
    final url = Uri.https("api.pexels.com", "/v1/search", {
      'query': "India",
    });

    final response = await http.get(
      url,
      headers: {
        'Authorization':
            'xVPxiXVokfwSKX0nwq8l2sCqoKRzjVH9SRSrvJyIKJ5pxGQB2MKU9eXr',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> image = data['photos'];
      return image;
    } else {
      throw Exception('Failed to fetch image data');
    }
  }
}
