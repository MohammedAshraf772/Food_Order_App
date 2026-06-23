import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(280),
            SvgPicture.asset("assets/logo/Hungry_.svg"),
            Spacer(),
            Image.asset('assets/splash/splash.png'),
          ],
        ),
      ),
    );
  }
}
