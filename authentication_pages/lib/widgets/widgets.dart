// the positioned bg images
import 'package:authentication_pages/values/app_paths.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:flutter/material.dart';

// the positioned bg images
List<Widget> bgPositionedImages() {
  return [
    // the top right background image
    Positioned(
      top: 0,
      right: 0,
      child: Image.asset(
        AppPaths.imgBgTop,
        width: 350,
      ),
    ),
    // the bottom left background image
    Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        AppPaths.imgBgBottom,
        width: 150,
      ),
    ),
  ];
}

// app filled button
Widget appElevatedButton({
  required String text,
  required Function() onPressed,
  Color color = Colors.white,
  double width = 150,
}) {
  return SizedBox(
    width: width,
    child: ElevatedButton(
      onPressed: onPressed,
      child: appTextButton(
        text: text,
        color: color,
      ),
    ),
  );
}

// app outlined button
Widget appOutlinedButton({
  required String text,
  required Function() onPressed,
  Color color = Colors.black,
  double width = 150,
}) {
  return SizedBox(
    width: width,
    child: OutlinedButton(
      onPressed: onPressed,
      child: appTextButton(
        text: text,
        color: color,
      ),
    ),
  );
}
