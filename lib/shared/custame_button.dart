import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/shared/custame_text.dart';

class CustameButton extends StatelessWidget {
  const CustameButton({
    super.key,
    required this.text,
    this.ontap,
    this.width,
    this.color,
  });
  final Color? color;
  final double? width;
  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: color ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: CustameText(text: text)),
      ),
    );
  }
}
