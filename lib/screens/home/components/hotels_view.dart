import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class Hotelsview extends StatelessWidget {
  const Hotelsview({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 1
            )
          ]
      ),
      width: size.width*0.6,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/one.png")
                )
            ),
          ),
          Gap(20),
          Text("Open Space",style: TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.bold),),
          Text("London", style: TextStyle(color: Colors.white, fontSize: 16),),
          Text("40 đô/night",style: TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.bold),),
          Text("Nếu câu trả lời đã được cung cấp Nếu câu trả lời,", style: TextStyle(color: Colors.white, fontSize: 16),),

        ],
      ),
    );
  }
}