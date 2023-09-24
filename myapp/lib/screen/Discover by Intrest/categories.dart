import 'package:flutter/material.dart';
import 'package:myapp/Custom%20Widget/RoundedContainer.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});
  @override
  Widget build(BuildContext context) {
    final categoryhelper = customcontainer();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            child: categoryhelper.buildCategoryItem(
                imageurl:
                    'https://static.vecteezy.com/system/resources/thumbnails/011/903/128/small/beautiful-panoramic-nature-tropical-beach-sunset-as-summer-island-landscape-with-chairs-umbrella-palm-leaves-calm-sea-shore-coast-luxury-travel-panoramic-destination-banner-for-vacation-or-holiday-photo.jpg',
                text: 'Beach'),
          ),
          SizedBox(width: 25),
          InkWell(
            child: categoryhelper.buildCategoryItem(
                imageurl:
                    'https://images.pexels.com/photos/1021808/pexels-photo-1021808.jpeg?auto=compress&cs=tinysrgb&w=600',
                text: 'Mountain'),
          ),
          SizedBox(width: 25),
          InkWell(
            child: categoryhelper.buildCategoryItem(
                imageurl:
                    'https://images.pexels.com/photos/3756167/pexels-photo-3756167.jpeg?auto=compress&cs=tinysrgb&w=600',
                text: 'Weekend'),
          ),
          SizedBox(width: 25),
          InkWell(
            child: categoryhelper.buildCategoryItem(
                imageurl:
                    'https://images.pexels.com/photos/3769138/pexels-photo-3769138.jpeg?auto=compress&cs=tinysrgb&w=600',
                text: 'International'),
          )
        ],
      ),
    );
  }
}
