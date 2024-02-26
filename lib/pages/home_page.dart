//   ///
//  Import LIBRARIES
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/widgets/home_page.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
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
    });
  }
}
