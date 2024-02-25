//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
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
          Container(
            height: 60.0,
            margin:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            width: double.maxFinite,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    CustomColor.bgLight1,
                  ],
                ),
                borderRadius: BorderRadius.circular(100.0)),
            child: Row(
              children: <Widget>[
                const Text('DataCoder'),
                const Spacer(),
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('button'),
                    ),
                  ),
              ],
            ),
          ),

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
