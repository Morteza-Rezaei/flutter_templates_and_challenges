import 'package:authentication_pages/values/app_colors.dart';
import 'package:authentication_pages/values/app_paths.dart';
import 'package:authentication_pages/values/app_text.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// the positioned bg images
List<Widget> bgPositionedImages() {
  return [
    // the top right background image
    Positioned(
      top: 0,
      right: 0,
      child: Image.asset(
        AppPaths.imgBgTop,
        width: 350,
      ),
    ),
    // the bottom left background image
    Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        AppPaths.imgBgBottom,
        width: 150,
      ),
    ),
  ];
}

// app filled button
Widget appElevatedButton({
  required String text,
  required Function() onPressed,
  Color color = Colors.white,
  double width = 150,
}) {
  return SizedBox(
    width: width,
    child: ElevatedButton(
      onPressed: onPressed,
      child: appTextButton(
        text: text,
        color: color,
      ),
    ),
  );
}

// app outlined button
Widget appOutlinedButton({
  required String text,
  required Function() onPressed,
  Color color = Colors.black,
  double width = 150,
}) {
  return SizedBox(
    width: width,
    child: OutlinedButton(
      onPressed: onPressed,
      child: appTextButton(
        text: text,
        color: color,
      ),
    ),
  );
}

// app labeled text field
Widget appLabeledTextField({
  required TextEditingController controller,
  required String hintText,
  bool obscureText = false,
  TextInputType keyboardType = TextInputType.text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: TextField(
      onChanged: (_) {
        // just to check the value
        debugPrint(controller.text);
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    ),
  );
}

// full width app filled button
Widget fullWidthAppElevatedButton({
  required String text,
  required Function() onPressed,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: appElevatedButton(
      text: text,
      onPressed: onPressed,
    ),
  );
}

// text button
Widget textButton({
  required String text,
  required Function() onPressed,
  Color color = AppColors.darkGrey,
}) {
  return TextButton(
    onPressed: onPressed,
    child: appSubtitleText(
      subtitle: text,
      color: color,
      fontWeight: FontWeight.w600,
    ),
  );
}

// social media button
Widget socialMediaButton({
  required String image,
  required Function() onPressed,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color: AppColors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Image.asset(
      image,
      width: 24,
      height: 24,
      fit: BoxFit.cover,
    ),
  );
}

// third party logins
Widget thirdPartyLogins({
  required Function() onGooglePressed,
  required Function() onFacebookPressed,
  required Function() onApplePressed,
}) {
  return Column(
    children: [
      appSubtitleText(
        subtitle: AppText.loginTptText,
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          socialMediaButton(
            image: AppPaths.imgGoogle,
            onPressed: onGooglePressed,
          ),
          socialMediaButton(
            image: AppPaths.imgFacebook,
            onPressed: onFacebookPressed,
          ),
          socialMediaButton(
            image: AppPaths.imgApple,
            onPressed: onApplePressed,
          ),
        ],
      ),
    ],
  );
}
