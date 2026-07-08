import 'package:flutter/material.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
            checkOutWidget("order", 18.9),
          ],
        ),
      ),
    );
  }
}

Widget checkOutWidget(title, price) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustameText(text: title, size: 15, weight: FontWeight.w300),
      CustameText(text: "$price\$", size: 15, weight: FontWeight.w300),
    ],
  );
}
