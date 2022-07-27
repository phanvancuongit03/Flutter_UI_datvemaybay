import 'package:datvemaybay/screens/home/components/ticketview.dart';
import 'package:datvemaybay/screens/home/components/vongtrong.dart';
import 'package:datvemaybay/screens/search/components/tabbutton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class BodyTicketScreen extends StatelessWidget {
  const BodyTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          children: [
            Gap(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Tickets", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
                child:
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                Tabbutton(text1: "Upcoming",text2: "Previous"),
                Gap(20),
                SizedBox(
                  width: size.width*0.85,
                  // height: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                                        Text("NYC", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Expanded(child: Container()),
                                        VongTrong(color: Colors.blue,),
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
                                                            color: Colors.blue
                                                        ),
                                                      ),
                                                      ))
                                                  );
                                                },
                                              ),
                                            ),
                                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.blue,),)),
                                          ],
                                        )),

                                        VongTrong(color: Colors.blue),
                                        Expanded(child: Container()),
                                        Text("LDN", style: TextStyle(fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    const Gap(3),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                          child: Text('New-York', style: TextStyle(color: Colors.blueGrey),),
                                        ),
                                        Text("8H 30M", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),),
                                        SizedBox(
                                          width: 100,
                                          child: Text('Lon don',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey)),
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
                          // color: const Color(0XFFF37B67),
                          child: Row(
                            children: [
                              Expanded(child: Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                List.generate(15, (index) => SizedBox(
                                  width: 5, height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey
                                    ),
                                  ),
                                ))
                                ,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                                        Text("1 MAY", style: TextStyle(fontWeight: FontWeight.bold)),

                                        Text('Date', style:  TextStyle(color: Colors.blueGrey)),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("08:00 AM", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                                        Text("Departure time", style: TextStyle(color: Colors.blueGrey,),),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("23", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('Number',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                        Text("Flutter DB", style: TextStyle(fontWeight: FontWeight.bold)),

                                        Text('Passenger', style:  TextStyle(color: Colors.blueGrey)),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("5221 364869", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('Passport',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                        Text("36485975156678", style: TextStyle(fontWeight: FontWeight.bold)),

                                        Text('NumberTickets', style:  TextStyle(color: Colors.blueGrey)),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("B26SG28", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('Booking code',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: const Color(0XFFF37B67),
                          child: Row(
                            children: [
                              Expanded(child: Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                List.generate(15, (index) => SizedBox(
                                  width: 5, height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey
                                    ),
                                  ),
                                ))
                                ,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                        Row(
                                          children: [
                                            Image.asset("assets/images/visa.png", scale: 11,),
                                            Text("****2462", style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),

                                        Text('Payment method', style:  TextStyle(color: Colors.blueGrey)),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("\$249.99", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('Price',textAlign: TextAlign.end, style:  TextStyle(color: Colors.blueGrey))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: 'chongthamtamky.com',
                            drawText: false,
                            height: 70,
                          ),
                        ),
                        Gap(20),
                        TicketView(size: size)
                      ],
                    ),
                  ),

                )
              ],
            ))
          ],
        ),
        Positioned(
          left: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Colors.black,
            ),
          ),
        ),
        Positioned(
          right: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
