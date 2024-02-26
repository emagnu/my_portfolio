//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/skill_items.dart';
//  //   ///

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0, //MediaQuery.of(context).size.width,
      ),
      child: Column(
        children: <Widget>[
          // Platform
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5.0)),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                leading: Image.asset(
                  platformItems[i]['img'],
                  width: 26.0,
                ),
                title: Text(platformItems[i]['title']),
              ),
            ),
          const SizedBox(height: 50.0),

          // Skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: <Widget>[
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  backgroundColor: CustomColor.bgLight2,
                  label: Text(skillItems[i]['title']),
                  avatar: Image.asset(
                    skillItems[i]['img'],
                    // width: 26.0,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
