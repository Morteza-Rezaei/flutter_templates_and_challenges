import 'package:flutter/material.dart';
import 'package:landing_pages/ui/landing/widgets/text_style.dart';
import 'package:landing_pages/values/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          appTitle(
            text: 'GO',
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
          appTitle(
            text: 'GREEN',
            fontWeight: FontWeight.w400,
            color: AppColors.lightGreen,
          ),
        ],
      )),
    );
  }
}
