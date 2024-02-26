//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/skill_items.dart';
//  //   ///

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Platforms
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: <Widget>[
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 180.0,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: CustomColor.hintDark),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    // visualDensity: const VisualDensity(
                    //     horizontal: -4, vertical: -4),
                    leading:
                        // Image.asset('assets/images/flutter.png'),
                        Image.asset(
                      platformItems[i]['img'],
                      width: 36.0,
                    ),
                    title: Text(
                      platformItems[i]['title'],
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: CustomColor.whitePrimary),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50.0),

        // Skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500, //constraints.maxWidth * 0.4,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              // alignment: WrapAlignment.center,
              children: <Widget>[
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(
                      skillItems[i]['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          color: CustomColor.whiteSecondary,
                          fontSize: 14.0),
                    ),
                    avatar: Image.asset(skillItems[i]['img']),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
