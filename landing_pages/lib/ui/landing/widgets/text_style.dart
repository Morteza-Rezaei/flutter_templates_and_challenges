import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_pages/values/app_colors.dart';

Text appTitle({
  required String text,
  double fontSize = 60,
  FontWeight fontWeight = FontWeight.w600,
  Color color = AppColors.primaryGreen,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 0,
    ),
    textAlign: TextAlign.center,
  );
}

Text appSubTitle({
  required String text,
  double fontSize = 22,
  TextAlign textAlign = TextAlign.center,
}) {
  return Text(
    text,
    style: GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: AppColors.midGreen,
      height: 0,
    ),
    textAlign: textAlign,
  );
}

Text appButtonText({
  required String text,
  double fontSize = 20,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      height: 0,
    ),
  );
}
