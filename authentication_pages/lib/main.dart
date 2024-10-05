import 'package:authentication_pages/ui/welcome/welcome.dart';
import 'package:authentication_pages/values/app_colors.dart';
import 'package:flutter/material.dart';

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
      ),
      home: const WelcomePage(),
    );
  }
}
