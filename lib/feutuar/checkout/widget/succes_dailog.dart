import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class SuccesDailog extends StatelessWidget {
  const SuccesDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: AppColors.primaryColor,
            child: Icon(
              CupertinoIcons.check_mark,
              color: Colors.white,
              size: 35,
            ),
          ),
          Gap(10),
          CustameText(text: "Succes", color: AppColors.primaryColor, size: 20),
          Gap(8),
          CustameText(
            text: "You payment was succesful\nreceipt for this purchane",
            color: Colors.grey.shade300,
            size: 11,
          ),
          Gap(8),
          CustameButton(
            text: "Close",
            width: 200,
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
