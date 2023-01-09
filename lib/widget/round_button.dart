import 'package:flutter/material.dart';

class RoundButtom extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;

  RoundButtom({required this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 40,
      ),
      fillColor: Colors.grey,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}
