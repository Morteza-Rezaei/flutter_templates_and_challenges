import 'package:authentication_pages/values/app_colors.dart';
import 'package:authentication_pages/values/app_text.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:flutter/material.dart';

// forgot your password widget
Widget forgotPasswordWidget() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        appSubtitleText(
          subtitle: AppText.loginForgetPassword,
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
        ),
      ],
    ),
  );
}
