import 'package:authentication_pages/ui/welcome/welcome.dart';
import 'package:authentication_pages/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),

        // scaffold background color
        scaffoldBackgroundColor: AppColors.bg,

        // elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primary,
            elevation: 10,
            shadowColor: AppColors.primary.withOpacity(0.3),
          ),
        ),

        // outlined button theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // when clicked color
            overlayColor: AppColors.black,
          ),
        ),

        // textfield theme
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.lightBlue,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          labelStyle: GoogleFonts.poppins(
            color: AppColors.darkGrey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          floatingLabelStyle: GoogleFonts.poppins(
            color: AppColors.primary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 2,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 2,
            ),
          ),
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
