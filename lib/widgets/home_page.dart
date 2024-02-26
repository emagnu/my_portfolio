//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../constants/colors.dart';
//  //   ///

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //  Avatar Image
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(colors: <Color>[
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  .createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              // 'assets/images/Dashatars.png',
              'assets/images/Dash1.png',
              width: screenWidth, // * 0.8,
            ),
          ),
          const SizedBox(height: 30.0),
          // Intro Text
          const Text(
            'Empowering Businesses\nwith Innovative and Tailored\nSoftware Solutions',
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),

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
    );
  }
}
