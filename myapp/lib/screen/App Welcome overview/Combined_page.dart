import 'package:flutter/material.dart';
import 'package:myapp/screen/App%20Welcome%20overview/Page1.dart';
import 'package:myapp/screen/App%20Welcome%20overview/page2.dart';
import 'package:myapp/screen/App%20Welcome%20overview/page3.dart';

class Cobined_page extends StatefulWidget {
  const Cobined_page({super.key});

  @override
  State<Cobined_page> createState() => _Cobined_pageState();
}

class _Cobined_pageState extends State<Cobined_page> {
  final PageController _controller = PageController(initialPage: 0);
  

  @override
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: const [
              Page_1(),
              Page_2(),
              Page_3(),
            ],
          ),
        ),
        
        
      ],
    );
  }
}


