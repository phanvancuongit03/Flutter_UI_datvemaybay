import 'package:datvemaybay/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'components/hotels_view.dart';
import 'components/textshow_viewall.dart';
import 'components/ticketview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("Good morning", style: Styles.deadLineStyle3,),
                        const Gap(5),
                        Text("Book ticket", style: Styles.deadLineStyle,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png")
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                        // contentPadding:
                        // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Search"),
                  )
                ),
                const Gap(40),
                TextshowViewall(text: 'Upcomming Flingts'),
                const Gap(20),
                SingleChildScrollView(
                  padding: EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TicketView(size: size),
                        TicketView(size: size),
                        TicketView(size: size),
                      ],
                    )),
                const Gap(40),
                TextshowViewall(text: 'Hotels'),
                const Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Hotelsview(size: size),
                      Hotelsview(size: size),
                      Hotelsview(size: size),
                      Hotelsview(size: size),
                    ],
                  ),
                )
              ],
            )
          ),

        ],
      ),

    );
  }
}








