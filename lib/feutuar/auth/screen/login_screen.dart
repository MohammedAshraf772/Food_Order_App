import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/feutuar/auth/widget/custam_button.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:food_order_app/shared/custame_textfield.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Gap(100),
                    SvgPicture.asset("assets/logo/Hungry_.svg"),
                    Gap(25),
                    Text(
                      "Welcome back , Discover The Fast Food",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustameText(
                      text: "hello",
                      color: Colors.white,
                      size: 13,
                      weight: FontWeight.w400,
                    ),
                    Gap(70),
                    TextFormField(
                      cursorHeight: 20,
                      cursorColor: AppColors.primaryColor,
                      validator: (v) {},
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Email Address",
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    Gap(15),
                    CustameTextfield(
                      hint: "password",
                      ispassword: true,
                      controller: emailController,
                    ),
                    Gap(50),
                    CustamButton(
                      text: "Login  ",
                      onTap: () {
                        if (formKey.currentState!.validate())
                          print(" success Login");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
