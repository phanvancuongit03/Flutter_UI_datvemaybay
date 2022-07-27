import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Buttontrangthaibay extends StatelessWidget {
  const Buttontrangthaibay({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          Icon(icon,
            size: 35,color: Colors.blueGrey,),
          Gap(10),
          Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),)
        ],
      ),
    );
  }
}