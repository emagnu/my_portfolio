//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILE
import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'project_card_widget.dart';
//  //   ///

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return Container(
      // height: 500.0,  // This container will have the eight of its content
      width: screenWidth, //double.maxFinite, //double.infinity,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 40.0),
          //  Work project Title
          const Text(
            'Work Projects:',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50.0),

          //  Work project Card()
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200.0),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: <Widget>[
                for (int i = 0; i < companyProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: companyProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 80.0),

          //  Personal project Title
          const Text(
            'Personal Projects:',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50.0),

          //  Personal project Card()
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200.0),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: <Widget>[
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
