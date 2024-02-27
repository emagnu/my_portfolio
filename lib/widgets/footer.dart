//   ///
//  Import LIBRARIES

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.maxFinite,
      alignment: Alignment.center,
      color: CustomColor.bgLight1, // Colors.blueGrey,
      child: const Text(
        'Made by Manny with Flutter 3.20',
        style: TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
      // child: ,
    );
  }
}
