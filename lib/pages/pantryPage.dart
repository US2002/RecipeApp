import 'package:flutter/material.dart';

class pantrypage extends StatefulWidget {
  const pantrypage({super.key});

  @override
  State<pantrypage> createState() => _pantrypageState();
}

class _pantrypageState extends State<pantrypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'R E C I P E G E N I E',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
        elevation: 10,
        backgroundColor: Color(0xFFf4a335),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
