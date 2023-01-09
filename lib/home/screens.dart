// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:bmi_calculator/widget/colors/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/impors.dart';
import 'dart:math';

enum Gender { male, female }

class SCreens extends StatefulWidget {
  @override
  State<SCreens> createState() => _SCreensState();
}

class _SCreensState extends State<SCreens> {
  double height = 180;
  int weight = 65;
  int age = 20;
  Gender selectedgender = Gender.male;
  void _gotoresult() {
    double _result = weight / pow(height / 100, 2);
    print(_result);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultScreen(
                  result: _result,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xff0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    selected: selectedgender == Gender.male ? true : false,
                    ontap: () => setState(() => selectedgender = Gender.male),
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    selected: selectedgender == Gender.female ? true : false,
                    ontap: () => setState(() => selectedgender = Gender.female),
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        // '$.....' string into reblation
                        //or
                        //height.toString(), wuxuu so saari dona value hieht kuhayy wuso daraa (.0 ) oo  sidaan oo kale :180.0
                        //marka wxaan isticmaleyna    height.toint.tostring
                        //height.round : waxay qabanaysaa tiroyinka kadanbeya  .234 ayuu isku dara
                        height.round().toString(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('cm',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300))
                    ],
                  ),
                  const SizedBox(height: 10),
                  //ananamouse funtion
                  SliderTheme(
                    data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.red),
                    child: Slider(
                      value: height,
                      min: 10,
                      max: 300,
                      onChanged: (newval) {
                        setState(() {
                          height = newval;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text('kg',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtom(
                              iconData: Icons.remove,
                              onPressed: () => setState(() => weight--),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButtom(
                              iconData: Icons.add,
                              onPressed: () => setState(() => weight++),
                            ),
                          ],
                        )
                        //ananamouse funtion
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text('yrs',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtom(
                              iconData: Icons.remove,
                              onPressed: () => setState(() => age--),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButtom(
                              iconData: Icons.add,
                              onPressed: () => setState(() => age++),
                            ),
                          ],
                        )
                        //ananamouse funtion
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomButtom(onpressed: _gotoresult),
        ],
      ),
    );
  }
}
