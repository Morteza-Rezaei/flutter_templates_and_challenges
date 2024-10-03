import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:landing_pages/ui/landing_page/widgets/widgets.dart';
import 'package:landing_pages/values/app_colors.dart';
import 'package:landing_pages/values/app_paths.dart';
import 'package:landing_pages/values/app_texts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // hex color: #E7E8E3
      backgroundColor: const Color(0xFFE7E8E3),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Page View
          PageView(
            children: [
              landingPage1(
                imagePath: LandingPageImages.page1,
                title: LandingPageTexts.p1Title,
                subTitle: LandingPageTexts.p1SubTitle,
                buttonText: LandingPageTexts.p1Button,
                onPressed: () {},
              ),
              landingPage2(
                imagePath: LandingPageImages.page2,
                title: LandingPageTexts.p2Title,
                subTitle: LandingPageTexts.p2SubTitle,
                buttonText: LandingPageTexts.p2Button,
                onPressed: () {},
              ),
              landingPage3(
                imagePath: LandingPageImages.page3,
                title: LandingPageTexts.p3Title,
                subTitle: LandingPageTexts.p3SubTitle,
                buttonText: LandingPageTexts.p3Button,
                onPressed: () {},
              ),
            ],
          ),

          // Page Indicator
          Positioned(
            bottom: 25,
            child: DotsIndicator(
              position: 1,
              dotsCount: 3,
              mainAxisAlignment: MainAxisAlignment.center,
              decorator: DotsDecorator(
                spacing: const EdgeInsets.symmetric(horizontal: 5),
                size: const Size(35, 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                activeSize: const Size(60, 12),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                activeColor: AppColors.primaryGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
