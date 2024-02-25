//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
import '../widgets/header_desktop.dart';
//  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      // appBar: AppBar(title: const Text('Home Page')),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //  MAIN
          const HeaderDesktop(),

          //  SKILLS
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Center(
              child: Text('Skills'),
            ),
          ),

          // PROJECTS
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Center(
              child: Text('Projects'),
            ),
          ),

          //  CONTACT
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.blueGrey,
            // child: ,
          ),

          //  FOOTER
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.blueGrey,
            // child: ,
          ),
        ],
      ),
    );
  }
}
