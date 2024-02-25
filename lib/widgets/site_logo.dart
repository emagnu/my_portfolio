//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
//  //   ///

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        'DataCoders',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary,
        ),
      ),
    );
  }
}
