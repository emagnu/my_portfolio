//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'dart:js' as js;
//  Import Files
import '../constants/colors.dart';
import '../utils/project_utils.dart';
//  //   ///

class ProjectCardWidget extends StatelessWidget {
  final ProjectUtils project;

  const ProjectCardWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290.0,
      width: 260.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            // Image
            project.image,
            height: 140.0,
            width: 260.0,
            fit: BoxFit.cover,
          ),
          // const SizedBox(height: 10.0),
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 12.0),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // SubTitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12.0,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          // Footer
          const Spacer(),
          Container(color: CustomColor.bgLight1, height: 1.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Available on:',
                  style: TextStyle(
                      fontSize: 10, color: CustomColor.yellowSecondary),
                ),
                const Spacer(),
                if (project.iosLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.iosLink]);
                    },
                    child: Image.asset('assets/icons/apple.png', width: 12),
                  ),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.androidLink]);
                      },
                      child: Image.asset('assets/icons/android.png', width: 15),
                    ),
                  ),
                if (project.webLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.webLink]);
                    },
                    child: Image.asset('assets/icons/web.png', width: 15),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
