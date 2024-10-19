import 'package:authentication_pages/ui/sign_in/sign_in.dart';
import 'package:authentication_pages/values/app_text.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:authentication_pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // the input controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // the top right and bottom left background images
            ...bgPositionedImages(),

            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 40,
                ),
                child: Center(
                  child: Column(
                    children: [
                      appTitleText(
                        title: AppText.signUpTitle,
                        fontSize: 30,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: appSubtitleText(
                          subtitle: AppText.signUpSubtitle,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 50),
                      appLabeledTextField(
                        controller: _emailController,
                        hintText: AppText.signUpEmailHint,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 20),
                      appLabeledTextField(
                        controller: _passwordController,
                        hintText: AppText.signUpPasswordHint,
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      appLabeledTextField(
                        controller: _confirmPasswordController,
                        hintText: AppText.signUpConfirmPasswordHint,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),
                      fullWidthAppElevatedButton(
                        text: AppText.signUpFilledButton,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 30),
                      textButton(
                        text: AppText.signUpTextButton,
                        onPressed: () {
                          // navigate to the sign up page
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignInPage(),
                            ),
                            (_) => false,
                          );
                        },
                      ),
                      const SizedBox(height: 60),
                      thirdPartyLogins(
                        onGooglePressed: () {},
                        onFacebookPressed: () {},
                        onApplePressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
