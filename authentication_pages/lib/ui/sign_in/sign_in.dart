import 'package:authentication_pages/ui/sign_in/widgets.dart';
import 'package:authentication_pages/ui/sign_up/sign_up.dart';
import 'package:authentication_pages/values/app_text.dart';
import 'package:authentication_pages/widgets/text_styles.dart';
import 'package:authentication_pages/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // the input controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                        title: AppText.loginTitle,
                        fontSize: 30,
                      ),
                      const SizedBox(height: 10),
                      appBigSubtitleText(
                        subtitle: AppText.loginSubtitle,
                      ),
                      const SizedBox(height: 80),
                      appLabeledTextField(
                        controller: _emailController,
                        hintText: AppText.loginEmailHint,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 20),
                      appLabeledTextField(
                        controller: _passwordController,
                        hintText: AppText.loginPasswordHint,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),
                      forgotPasswordWidget(),
                      const SizedBox(height: 30),
                      fullWidthAppElevatedButton(
                        text: AppText.loginFilledButton,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 30),
                      textButton(
                        text: AppText.loginTextButton,
                        onPressed: () {
                          // navigate to the sign up page
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignUpPage(),
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
