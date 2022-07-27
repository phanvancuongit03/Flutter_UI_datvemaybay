import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Khoitextmau extends StatelessWidget {
  const Khoitextmau({
    Key? key,
    required this.size, required this.tile, required this.text, required this.color,
  }) : super(key: key);

  final Size size;
  final String tile,text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          width: size.width*0.45,
          height: 200,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Column(
            children: [
              Text(tile, style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
              ),),
              Gap(10),
              Text(text, style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
              ),)
            ],
          ),
        ),
        Positioned(
          right: -45,
          top: -40,
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 18, color: Colors.green)
            ),
          ),
        )
      ],
    );
  }
}