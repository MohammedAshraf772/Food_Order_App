import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/test/pngwing 12.svg", height: 200),
        Spacer(),
        CustameText(
          text: "Customize Your Burger\n To Your Testes.\nUltimate Experince",
        ),
        Slider(
          min: 0,
          max: 1,
          value: value,
          onChanged: onChanged,
          inactiveColor: Colors.grey.shade300,
          activeColor: AppColors.primaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustameText(text: "🥶"),
            Gap(100),
            CustameText(text: "🌶️"),
          ],
        ),
      ],
    );
  }
}
