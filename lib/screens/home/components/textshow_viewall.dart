import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';
class TextshowViewall extends StatelessWidget {
  const TextshowViewall({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style:  Styles.deadLineStyle2,),
        InkWell(
            onTap: (){},
            child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
      ],
    );
  }
}