import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/feutuar/auth/widget/custam_button.dart';
import 'package:food_order_app/shared/custame_textfield.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset("assets/logo/"),
                Gap(60),
                CustameTextfield(
                  hint: "Name ",
                  ispassword: false,
                  controller: nameController,
                ),
                Gap(15),
                CustameTextfield(
                  hint: "Emaill ",
                  ispassword: false,
                  controller: emailController,
                ),
                Gap(15),
                CustameTextfield(
                  hint: "pass ",
                  ispassword: true,
                  controller: passController,
                ),
                Gap(15),
                CustameTextfield(
                  hint: "confirm ",
                  ispassword: false,
                  controller: confirmController,
                ),
                Gap(50),
                CustamButton(
                  text: "Sign Up ",
                  onTap: () {
                    if (formKey.currentState!.validate())
                      print(" success register");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
