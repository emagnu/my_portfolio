//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/nav_items.dart';
//  //   ///

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          const SizedBox(height: 10.0),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                titleTextStyle: const TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0),
                onTap: () {},
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i])),
        ],
      ),
    );
  }
}
