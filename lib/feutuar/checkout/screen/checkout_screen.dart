import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/feutuar/checkout/widget/order_details_widget.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustameText(
              text: "Order Summary",
              size: 20,
              weight: FontWeight.w500,
            ),
            Gap(10),
            OrderDetailsWidget(
              order: "13.5",
              texes: "3.5",
              total: "100",
              fees: "2.5",
            ),

            Gap(60),
            CustameText(
              text: "Payment methode",
              size: 20,
              weight: FontWeight.w500,
            ),
            Gap(20),
            ListTile(
              leading: Image.asset("assets/test/dollar.png", width: 50),
              title: Text("cash on Delivery"),
              trailing: Radio<String>(
                activeColor: AppColors.primaryColor,
                value: "cash",
                groupValue: "Cash",
                onChanged: (v) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
