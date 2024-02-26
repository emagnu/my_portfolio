//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/widgets/home_page.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
//  //   ///

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        // appBar: AppBar(title: const Text('Home Page')),  //Removed as just needed for debugging
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //  *** MAIN  ***
            //  HEADER + NAVBAR DESKTOP/MOBILE
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            //  MAIN DESKTOP/MOBILE
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            //  *** SKILLS   ***
            Container(
                height: 500.0,
                width: screenWidth, //.infinity,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1, // Colors.blueGrey,
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // title
                    Text(
                      'What we can do for your business:',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    // Platforms & skills
                    SkillDesktop()
                  ],
                )),

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
    });
  }
}
