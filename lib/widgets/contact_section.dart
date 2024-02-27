//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'dart:js' as js;
//  Import FILES
import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/sns_links.dart';
import 'custom_text_field.dart';
//   ///  ///

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: <Widget>[
          const Text(
            'Get in touch:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 30.0),
          ConstrainedBox(
            constraints:
                const BoxConstraints(maxWidth: 700.0, maxHeight: 100.0),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildNameEmailFieldDesktop();
              } else {
                return buildNameEmailFieldMobile();
              }
            }),
          ),
          const SizedBox(height: 15.0), // Message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700.0),
            child: const CustomTextField(
              hintText: 'Your message',
              maxLine: 16,
            ),
          ),
          const SizedBox(height: 20.0),
          // Send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700.0),
            child: SizedBox(
              width: double.maxFinite, //.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                onPressed: () {},
                child: const Text(
                  'Get in touch.',
                  style: TextStyle(
                      color: CustomColor.scaffoldBg,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          // SNS icon button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300.0),
            child: const Divider(),
          ),
          const SizedBox(height: 15.0),
          Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/facebook.png'),
                ),
              ),
              IconButton(
                onPressed: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/github.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset('assets/icons/github.png', width: 25),
              ),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.instagram]);
                  },
                  child: Image.asset('assets/icons/whatsapp.png', width: 25)),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.facebook]);
                },
                child: Image.asset('assets/icons/facebook.png', width: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: <Widget>[
        // Name
        Flexible(
          child: CustomTextField(
            hintText: 'Your name',
          ),
        ),
        SizedBox(width: 15.0),
        // Email
        Flexible(
          child: CustomTextField(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: <Widget>[
        // Name
        Flexible(
          child: CustomTextField(
            hintText: 'Your name',
          ),
        ),
        SizedBox(height: 10.0),
        // Email
        Flexible(
          child: CustomTextField(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }
}
