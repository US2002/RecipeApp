import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: const Center(
          child: Text(
        'PAGE ONE!!',
        style: TextStyle(fontFamily: 'Roboto-BoldItalic'),
      )),
    );
  }
}
