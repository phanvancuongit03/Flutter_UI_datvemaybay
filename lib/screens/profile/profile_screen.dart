import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'components/body_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: BodyProfileScreen(),
    );
  }
}
