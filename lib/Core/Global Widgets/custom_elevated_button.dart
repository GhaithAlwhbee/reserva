import 'package:flutter/material.dart';

import '../Theme & Constants/Colors.dart';
import '../Theme & Constants/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.fontSize,
    required this.text,
    this.color,
    this.fontColor,
  });
  final Function()? onPressed;
  final fontSize;
  final String text;
  Color? color;
  Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? ColorsManager.kSecondaryColor,
        // padding: EdgeInsets.symmetric(
        //   horizontal: 100,
        //   vertical: 15,
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: kRegularBorderRadius,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: fontColor ?? Colors.white,
        ),
      ),
    );
  }
}
