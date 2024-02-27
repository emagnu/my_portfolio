//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
//  Import FILES
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
// import '../widgets/projects_section.dart';
// import '../widgets/header_desktop.dart';
// import '../widgets/header_mobile.dart';
// import '../widgets/home_page.dart';
// import '../widgets/main_desktop.dart';
// import '../widgets/skill_desktop.dart';
// import '../widgets/skills_mobile.dart';
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
    // final screenSize = MediaQuery.of(context).size;
    // final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

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
            // //  HEADER + NAVBAR DESKTOP/MOBILE
            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const HeaderDesktop()
            // else
            //   HeaderMobile(
            //     onLogoTap: () {},
            //     onMenuTap: () {
            //       scaffoldKey.currentState?.openEndDrawer();
            //     },
            //   ),

            // //  MAIN DESKTOP/MOBILE
            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const MainDesktop()
            // else
            //   const MainMobile(),
            // //  *** SKILLS   ***
            // Container(
            //   height: 700.0,
            //   width: screenWidth, //.infinity,
            //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            //   color: CustomColor.bgLight1, // Colors.blueGrey,
            //   //
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: <Widget>[
            //       // title
            //       const Text(
            //         'What we can do for your business:',
            //         style: TextStyle(
            //           fontSize: 24.0,
            //           fontWeight: FontWeight.bold,
            //           color: CustomColor.whitePrimary,
            //         ),
            //       ),
            //       const SizedBox(height: 50.0),
            //       // Platforms & skills
            //       if (constraints.maxWidth >= kMedDesktopWidth)
            //         const SkillDesktop()
            //       else
            //         const SkillsMobile()
            //     ],
            //   ),
            // ),

            // // ***  PROJECTS  ***
            // const ProjectsSection(),

            //  CONTACT
            const SizedBox(height: 30.0),
            const ContactSection(),

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
