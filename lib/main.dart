import 'package:bmi_calculator/widget/colors/colors.dart';
import 'package:flutter/material.dart';
import 'home/screens.dart';
import 'colors/colors.dart';

void main() {
  runApp(BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E21),
          scaffoldBackgroundColor: Color(0xff0A0E21)),
      home: SCreens(),
    );
  }
}
