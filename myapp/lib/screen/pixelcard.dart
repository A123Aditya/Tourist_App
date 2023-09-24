import 'package:flutter/material.dart';
import 'package:myapp/api/imageapi.dart';

class Pexelcard extends StatefulWidget {
  const Pexelcard({super.key});

  @override
  State<Pexelcard> createState() => _PexelcardState();
}

class _PexelcardState extends State<Pexelcard> {
  final imageApi = Image_api();
  List<dynamic> images = [];

  @override
  void initState() {
    super.initState();
    _fetchImages();
  }

  Future<void> _fetchImages() async {
    try {
      images = await imageApi.fetchImage();
      setState(() {});
    } catch (e) {
      // Handle error
      print("Error fetching images: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map<Widget>((imageData) {
            String imageUrl = imageData['src']
                ['large']; // Adjust this to get the desired image size
            return Card(
              color: Colors.white10,
              margin: EdgeInsets.all(8.0),
              child: Image.network(
                imageUrl,
                width: 200, // Adjust the width as needed
                height: 150, // Adjust the height as needed
                fit: BoxFit.contain,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
