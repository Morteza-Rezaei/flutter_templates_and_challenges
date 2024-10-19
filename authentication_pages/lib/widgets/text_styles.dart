import 'package:authentication_pages/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// app title text
Text appTitleText({
  required String title,
  double fontSize = 35,
  FontWeight fontWeight = FontWeight.w600,
  Color color = AppColors.primary,
  TextAlign textAlign = TextAlign.center,
}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 0,
    ),
    textAlign: textAlign,
  );
}

// app subtitle text
Text appSubtitleText({
  required String subtitle,
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.w400,
  Color color = AppColors.black,
  TextAlign textAlign = TextAlign.center,
}) {
  return Text(
    subtitle,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 0,
    ),
    textAlign: textAlign,
  );
}

// app big subtitle text
Text appBigSubtitleText({
  required String subtitle,
  double fontSize = 20,
  FontWeight fontWeight = FontWeight.w600,
  Color color = AppColors.black,
  TextAlign textAlign = TextAlign.center,
}) {
  return Text(
    subtitle,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 0,
    ),
    textAlign: textAlign,
  );
}

// app text button
Text appTextButton({
  required String text,
  double fontSize = 20,
  FontWeight fontWeight = FontWeight.w600,
  Color color = AppColors.white,
  TextAlign textAlign = TextAlign.center,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 0,
    ),
    textAlign: textAlign,
  );
}
