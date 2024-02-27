//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';

import 'package:my_portfolio/widgets/site_logo.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../constants/style.dart';
//  //   ///

class HeaderDesktop extends StatelessWidget {
  final Function(int) onNavMenuTap;

  const HeaderDesktop({super.key, required this.onNavMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,

      // ** Nav-Bar  **
      child: Row(
        children: <Widget>[
          SiteLogo(onTap: () {}),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
