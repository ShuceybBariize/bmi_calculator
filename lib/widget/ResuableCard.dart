import 'package:bmi_calculator/widget/colors/colors.dart';
import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
//final and const  deferentiotion
//final : wuxuu ku ogolanayaa marka ad isticmalayso inuu kusiyo inaad wixi aburato latter initionation
//const : waa one time marka aad sameynaysid inizilationka waa in la helaa.

  final Widget? child;
  final bool selected;
  final Function()? ontap;
  ResuableCard(
      {this.child, this.selected = false, this.ontap}); //{} named prameter

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected == true ? KActiveCardColor : KInactiveCardColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
