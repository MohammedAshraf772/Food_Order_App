import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    this.onAdd,
    this.onMin,
    this.onRemove,
    required this.num,
  });
  final String image, text, desc;
  final int num;
  final Function()? onAdd;
  final Function()? onMin;
  final Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, width: 100),
                CustameText(text: text, weight: FontWeight.bold),
                CustameText(text: desc),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: onAdd,
                      child: CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(CupertinoIcons.add, color: Colors.white),
                      ),
                    ),
                    Gap(20),
                    CustameText(text: num.toString(), weight: FontWeight.bold),
                    Gap(20),
                    GestureDetector(
                      onTap: onMin,
                      child: CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(CupertinoIcons.minus, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onRemove,
                  child: Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: CustameText(text: "Remove", color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
