import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/img_1.png")
                        )
                    ),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Book tickets", style: Styles.deadLineStyle,),
                      const Gap(5),
                      Text("Good morning", style: Styles.deadLineStyle3,),
                      const Gap(5),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.gpp_good, color: Color(0xFF687daf),),
                            Text("Premium statust", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){},
                      child: Text("Edit", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF687daf), fontSize: 17),))
                ],
              ),
              Gap(40),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: size.width*1,
                    // height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xFF687daf),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.lightbulb_circle, color: Colors.white, size: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("You' ve got a new award ", style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                            ),),
                            Gap(10),
                            Text("You have  150 flights in a year", style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
                            ),)
                          ],
                        ),
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
                          border: Border.all(width: 18, color: Colors.blue)
                      ),
                    ),
                  )
                ],
              ),
              Gap(20),
              Text("Accumumlated miles", style: Styles.deadLineStyle2,),
              Gap(40),
              Center(child: Text("198250", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),)),
              Gap(40),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("23 042", style: TextStyle(fontWeight: FontWeight.bold)),

                          Text('miles', style:  TextStyle(color: Colors.blueGrey)),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Airline CO", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Recevied form',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                        ],
                      ),
                    ],
                  ),
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("24", style: TextStyle(fontWeight: FontWeight.bold)),

                          Text('miles', style:  TextStyle(color: Colors.blueGrey)),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("McDonal's", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Recevied form',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                        ],
                      ),
                    ],
                  ),
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("52 340", style: TextStyle(fontWeight: FontWeight.bold)),

                          Text('miles', style:  TextStyle(color: Colors.blueGrey)),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Exuma", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Recevied form',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                        ],
                      ),
                    ],
                  ),
                  Gap(40),
                  Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("How to get more miles", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF687daf), fontSize: 17),)),
                  )
                ],
              ),),

            ],
          ),
        )
      ],
    );
  }
}
