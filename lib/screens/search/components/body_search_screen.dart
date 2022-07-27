import 'package:datvemaybay/screens/home/components/textshow_viewall.dart';
import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'button_trang_thai_bay.dart';
import 'buttonevelcutsstom.dart';
import 'khoi_text_mau.dart';
import 'tabbutton.dart';

class BodySearchScreen extends StatelessWidget {
  const BodySearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40),
              Text("What are you looking for?",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              Gap(20),
              Tabbutton(text1: "Airline tickets",text2: "hotel"),
              Gap(20),
              Buttontrangthaibay(
                icon: Icons.airplane_ticket_outlined,
                text: "Departure",
              ),
              Gap(20),
              Buttontrangthaibay(
                icon: Icons.airplane_ticket_sharp,
                text: "Arrival",
              ),
              Gap(20),
              Buttonevlecutsstom(
                  color: Colors.indigoAccent,
              text: "Find Tickets", size: size,),
              Gap(40),
              TextshowViewall(text: "Upcoming Flights"),
              Gap(20),
              Row(
                children: [
                  Container(
                    width: size.width*0.4,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("assets/images/three.png")
                            ),
                          ),
                        ),
                        Gap(5),
                        Text("20% dis count on ready booking of this filight dont's miss"
                            "dis count on ready booking of this filight dont's miss"
                            "dis count on ready booking of this filight dont's miss"
                            "dis count on ready booking of this filight dont's miss"
                            "dis count on ready booking of this filight dont's miss")
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                  children: [
                    Khoitextmau(
                        size: size,
                        tile: "Discount for survey",
                      text: "Take the suvery anount our  servies and get discount",
                      color: Colors.cyan,
                    ),
                    Gap(20),
                    Khoitextmau(
                      size: size,
                      tile: "Discount for survey",
                      text: "Take the suvery anount our  servies and get discount",
                      color: Colors.deepOrange,
                    ),

                  ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}







