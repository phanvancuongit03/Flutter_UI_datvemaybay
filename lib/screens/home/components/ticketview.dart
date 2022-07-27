import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'vongtrong.dart';

class TicketView extends StatelessWidget {
  const TicketView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width*0.85,
      // height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0))
              ),
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("NYC", style: TextStyle(color: Colors.white)),
                            Expanded(child: Container()),
                            VongTrong(color: Colors.white),
                            Expanded(child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: LayoutBuilder(
                                    builder: ( BuildContext context, BoxConstraints constraints) {
                                      return Flex(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          children: List.generate(8, (index) => SizedBox(
                                            width: 3, height: 2, child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                            ),
                                          ),
                                          ))
                                      );
                                    },
                                  ),
                                ),
                                Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                              ],
                            )),

                            VongTrong(color: Colors.white,),
                            Expanded(child: Container()),
                            Text("LDN", style: TextStyle(color: Colors.white))
                          ],
                        ),
                        const Gap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text('New-York', style:  TextStyle(color: Colors.white)),
                            ),
                            Text("8H 30M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 100,
                              child: Text('Lon don',textAlign: TextAlign.end, style:  TextStyle(color: Colors.white)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0XFFF37B67),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight:  Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                  Expanded(child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    List.generate(15, (index) => SizedBox(
                      width: 5, height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                      ),
                    ))
                    ,
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft:  Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0XFFF37B67),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1 May", style: TextStyle(color: Colors.white)),

                            Text('Date', style:  TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("08:00 AM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),

                            Text("Departure time", style: TextStyle(color: Colors.white,),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("23", style: TextStyle(color: Colors.white)),
                            Text('Number',textAlign: TextAlign.end, style:  TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}