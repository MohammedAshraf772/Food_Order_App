import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/logo/Hungry_.svg",
              color: AppColors.primaryColor,
              height: 35,
            ),
            Gap(5),
            CustameText(
              text: "Hello ,",
              size: 18,
              weight: FontWeight.bold,
              color: Colors.green.shade300,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 40),
      ],
    );
  }
}
