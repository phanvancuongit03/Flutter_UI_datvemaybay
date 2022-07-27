import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'components/body-tickets_screen.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: BodyTicketScreen(),
    );
  }
}
