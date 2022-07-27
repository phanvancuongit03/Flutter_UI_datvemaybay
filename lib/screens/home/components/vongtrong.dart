import 'package:flutter/material.dart';

class VongTrong extends StatelessWidget {
  const VongTrong({
    Key? key, required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: color)
      ),
    );
  }
}