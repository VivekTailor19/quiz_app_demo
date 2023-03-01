import 'package:flutter/material.dart';
import 'package:quiz_app_demo/result_file.dart';

import 'home_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => HomeScreen(),
      'result' : (context) => Result(),

    },
  ),);
}
