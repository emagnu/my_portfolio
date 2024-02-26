//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
//  //   ///

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Intro Text
              const Text(
                'Empowering Businesses\nwith Innovative and Tailored\nSoftware Solutions',
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowPrimary,
                    ),
                    onPressed: () {},
                    child: const Text('Get in touch')),
              )
            ],
          ),
          //  Avatar Image
          Image.asset(
            'assets/images/Dashatars.png',
            // 'assets/images/Dash1.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
