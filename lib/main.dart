import 'package:flutter/material.dart';

import 'home_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : (context) => HomeScreen(),
    },
  ),);
}
