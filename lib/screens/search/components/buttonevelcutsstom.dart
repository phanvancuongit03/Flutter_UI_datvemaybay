import 'package:flutter/material.dart';

class Buttonevlecutsstom extends StatelessWidget {
  const Buttonevlecutsstom({
    Key? key,
    required this.size, required this.color, required this.text,
  }) : super(key: key);

  final Size size;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width*1,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
        onPressed: (){},
        child: Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
