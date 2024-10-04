import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_pages/ui/landing_page/bloc/landing_blocs.dart';
import 'package:landing_pages/ui/landing_page/landing_page.dart';
import 'package:landing_pages/values/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LandingBlocs(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // set theme to green
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
          ),

          // the elevated button theme
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.primaryGreen),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 36,
                ),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        home: const LandingPage(),
      ),
    );
  }
}
