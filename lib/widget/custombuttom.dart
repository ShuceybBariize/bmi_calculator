import 'package:flutter/material.dart';

import 'colors/colors.dart';

class CustomButtom extends StatelessWidget {
  final Function() onpressed;
  final String? title;
  const CustomButtom({super.key, required this.onpressed, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Text(
        title ?? 'CALCULATOR',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      fillColor: KButtonColor,
      constraints: BoxConstraints.tightFor(width: double.infinity, height: 56),
    );
  }
}
