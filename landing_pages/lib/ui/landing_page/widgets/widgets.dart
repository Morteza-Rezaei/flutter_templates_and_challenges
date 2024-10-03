import 'package:flutter/material.dart';
import 'package:landing_pages/ui/landing_page/widgets/text_style.dart';

// Landing Page 1
Widget landingPage1({
  required String imagePath,
  required String title,
  required String subTitle,
  required String buttonText,
  required Function() onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        // Header Text & Sub Header Text
        Positioned(
          top: 100,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appTitle(text: title),
              appSubTitle(
                text: subTitle,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),

        // Button
        Positioned(
          bottom: 100,
          right: 30,
          child: ElevatedButton(
            onPressed: onPressed,
            child: appButtonText(
              text: buttonText,
            ),
          ),
        ),
      ],
    ),
  );
}

// Landing Page 2
Widget landingPage2({
  required String imagePath,
  required String title,
  required String subTitle,
  required String buttonText,
  required Function() onPressed,
}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      // Image, Header Text & Sub Header Text
      Container(
        margin: const EdgeInsets.only(
          top: 150,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                imagePath,
                height: 200,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 10,
              ),
              child: appTitle(text: title, fontSize: 28),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: appSubTitle(
                text: subTitle,
              ),
            ),
          ],
        ),
      ),

      // Button
      Positioned(
        bottom: 100,
        right: 30,
        child: ElevatedButton(
          onPressed: onPressed,
          child: appButtonText(
            text: buttonText,
          ),
        ),
      ),
    ],
  );
}

// Landing Page 3
Widget landingPage3({
  required String imagePath,
  required String title,
  required String subTitle,
  required String buttonText,
  required Function() onPressed,
}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      // Image, Header Text & Sub Header Text
      Container(
        margin: const EdgeInsets.only(
          top: 100,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                imagePath,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 10,
              ),
              child: appTitle(text: title, fontSize: 28),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: appSubTitle(
                text: subTitle,
              ),
            ),
          ],
        ),
      ),

      // Button
      Positioned(
        bottom: 100,
        right: 30,
        child: ElevatedButton(
          onPressed: onPressed,
          child: appButtonText(
            text: buttonText,
          ),
        ),
      ),
    ],
  );
}
