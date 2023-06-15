import 'package:flutter/material.dart';
import 'package:recipe_genie/pages/splashScreen.dart';

void main() {
  runApp(MaterialApp(
    home: splashScreen(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
