import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Tabbutton extends StatelessWidget {
  const Tabbutton({
    Key? key, required this.text1, required this.text2,
  }) : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: (){},
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                    )
                ),
                child: Center(child: Text(text1))),
          ),
        ),
        // Spacer(),
        Expanded(child: InkWell(
          onTap: (){
          },
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)
                  )
              ),
              child: Center(child: Text(text2))),
        ))
      ],
    );
  }
}