import 'package:authentication_pages/values/app_paths.dart';
import 'package:authentication_pages/values/app_text.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:authentication_pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // the top right and bottom left background images
          ...bgPositionedImages(),

          // the welcome image
          Positioned(
              // take the full screen width
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.asset(
                    AppPaths.imgWelcome,
                    width: 300,
                  ),
                  const SizedBox(height: 20),
                  appTitleText(
                    title: AppText.welcomeTitle,
                  ),
                  const SizedBox(height: 10),
                  appSubtitleText(
                    subtitle: AppText.welcomeSubtitle,
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      appElevatedButton(
                        text: AppText.welcomeFilledButton,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 15),
                      appOutlinedButton(
                        text: AppText.welcomeTextButton,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
