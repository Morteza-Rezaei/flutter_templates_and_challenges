import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_pages/ui/landing/bloc/landing_blocs.dart';
import 'package:landing_pages/ui/landing/bloc/landing_events.dart';
import 'package:landing_pages/ui/landing/bloc/landing_states.dart';
import 'package:landing_pages/ui/landing/widgets/widgets.dart';
import 'package:landing_pages/ui/splash/splash_page.dart';
import 'package:landing_pages/values/app_colors.dart';
import 'package:landing_pages/values/app_paths.dart';
import 'package:landing_pages/values/app_texts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      // hex color: #E7E8E3
      backgroundColor: AppColors.appBackground,
      body: BlocBuilder<LandingBlocs, LandingStates>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              // Page View
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  // the state value is updated when index changes
                  state.pageIndex = index;
                  // then it will trigger the event so the state will be updated
                  BlocProvider.of<LandingBlocs>(context).add(LandingEvents());
                },
                children: [
                  landingPage1(
                    nextPageIndex: 1,
                    imagePath: LandingPageImages.page1,
                    title: LandingPageTexts.p1Title,
                    subTitle: LandingPageTexts.p1SubTitle,
                    buttonText: LandingPageTexts.p1Button,
                    onPressed: () {
                      // move to the next page
                      pageController.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  landingPage2(
                    nextPageIndex: 2,
                    imagePath: LandingPageImages.page2,
                    title: LandingPageTexts.p2Title,
                    subTitle: LandingPageTexts.p2SubTitle,
                    buttonText: LandingPageTexts.p2Button,
                    onPressed: () {
                      // move to the next page
                      pageController.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  landingPage3(
                    imagePath: LandingPageImages.page3,
                    title: LandingPageTexts.p3Title,
                    subTitle: LandingPageTexts.p3SubTitle,
                    buttonText: LandingPageTexts.p3Button,
                    onPressed: () {
                      // navigate to the app
                      // but for now, just navigate to the splash screen
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplashPage(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),

              // Page Indicator
              Positioned(
                bottom: 25,
                child: DotsIndicator(
                  // so the dots will be updated based on the state value
                  position: state.pageIndex,
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
          );
        },
      ),
    );
  }
}
