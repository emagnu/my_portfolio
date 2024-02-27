//   ///
//  Import LIBRARIES

import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;

  const CustomTextField({
    super.key,
    this.controller,
    this.maxLine = 1,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(
        color: CustomColor.scaffoldBg,
      ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16.0),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText, //'Name',
          hintStyle: const TextStyle(color: CustomColor.hintDark)),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    );
  }
}
