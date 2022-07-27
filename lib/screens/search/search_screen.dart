import 'package:datvemaybay/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'components/body_search_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: BodySearchScreen(),
    );
  }
}
