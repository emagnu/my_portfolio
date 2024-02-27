//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'dart:js' as js;
//  //   ///';
//  Import FILES
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../constants/size.dart';
import '../constants/sns_links.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/home_page.dart';
import '../widgets/main_desktop.dart';
import '../widgets/projects_section.dart';
import '../widgets/skill_desktop.dart';
import '../widgets/skills_mobile.dart';
//  //   ///

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navbarKeys =
      List.generate(navTitles.length - 1, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        // appBar: AppBar(title: const Text('Home Page')),  //Removed as just needed for debugging
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(
                onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  // Call back function
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            // scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(key: navbarKeys[0]),
              // *** MAIN  ***
              //  HEADER + NAVBAR DESKTOP/MOBILE
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(
                  onNavMenuTap: (int navIndex) {
                    // Call back function
                    scrollToSection(navIndex);
                  },
                )
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
                key: navbarKeys[1],
                height: 700.0,
                width: screenWidth, //.infinity,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1, // Colors.blueGrey,
                //
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // title
                    const Text(
                      'What we can do for your business:',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    // Platforms & skills
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillDesktop()
                    else
                      const SkillsMobile()
                  ],
                ),
              ),
              const SizedBox(height: 30.0),

              // ***  PROJECTS  ***
              ProjectsSection(key: navbarKeys[2]),

              //  CONTACT
              ContactSection(key: navbarKeys[3]),
              const SizedBox(height: 30.0),

              //  FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }
    // final key = navbarKeys[navIndex];
    // final context = key.currentContext;
    // if(context == null){
    //   return;
    // }
    // scrollController.animateTo(
    //   0.0,
    //   duration: const Duration(milliseconds: 500),
    //   curve: Curves.easeInOut,
    // );
    // })
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      alignment: 0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
