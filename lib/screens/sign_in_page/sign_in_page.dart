import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grofast/screens/sign_in_page/widgets/my_button.dart';
import 'package:grofast/screens/sign_in_page/widgets/my_custom_textformfield_pass.dart';
import 'package:grofast/screens/sign_in_page/widgets/my_custom_textformfield.dart';
import 'package:grofast/screens/sign_in_page/widgets/my_or_with_button.dart';
import 'package:grofast/utils/colors.dart';
import 'package:grofast/utils/images.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

bool visiblity = true;
bool errorvisiblity = false;

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 41, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: MyColors.c777777),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: SvgPicture.asset(MyImages.iconArrowLeft),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 58),
                const SizedBox(
                  width: 208,
                  child: Text(
                    "Welcome back to Grofast!",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: 0.4,
                        color: MyColors.c194B38),
                  ),
                ),
                const SizedBox(height: 60),
                MyTextFormField(
                    errorvisiblity: errorvisiblity,
                    controller: emailController,
                    name: "Email address",
                    errorname: "Email address is incorrect",
                    hintName: "Enter your email address",
                    prefixImage: MyImages.iconEmail),
                const SizedBox(height: 25),
                MyTextFormFieldPassword(
                  errorvisiblity: errorvisiblity,
                  controller: passwordController,
                  name: "Password",
                  errorname: "Password is incorrect",
                  hintName: "Enter your password",
                  prefixImage: MyImages.iconPassword,
                  visiblity: visiblity,
                  onTap: () {
                    setState(
                      () {
                        visiblity = !visiblity;
                      },
                    );
                  },
                ),
                const SizedBox(height: 52),
                const MyButton(buttonName: "Sign In"),
                const SizedBox(height: 22),
                const Center(
                  child: Text(
                    "or with",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: MyColors.c4B4B4B,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        OrWithButton(iconName: MyImages.iconAppleLogo),
                        OrWithButton(iconName: MyImages.iconGoogleLogo),
                        OrWithButton(iconName: MyImages.iconTwitterLogo),
                        OrWithButton(iconName: MyImages.iconFacebookLogo),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New User?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: MyColors.c9C9C9C)),
                    TextButton(
                      onPressed: () {

                      },
                      child: const Text("Sign Up", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: MyColors.c4CBB5E)))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
