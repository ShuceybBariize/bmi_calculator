import 'package:bmi_calculator/impors.dart';
import 'package:bmi_calculator/widget/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});
  String retranslate() {
    if (result >= 0 && result <= 18)
      return 'You\'re UnderWeight😔';
    else if (result >= 19 && result <= 25)
      return 'you\'re In Shape (Normal And Health)😊';
    else if (result >= 26 && result <= 29)
      return ' You\'re Overweight 😔';
    else
      return ('You\'re Abose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CULCULATOR",
        ),
        centerTitle: true,
        backgroundColor: KInactiveCardColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Result",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade400),
          ),
          Expanded(
              child: ResuableCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    retranslate(),
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade300),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
          CustomButtom(
            onpressed: () => Navigator.pop(context),
            title: "RE-CALCULATE",
          )
        ],
      ),
    );
  }
}
