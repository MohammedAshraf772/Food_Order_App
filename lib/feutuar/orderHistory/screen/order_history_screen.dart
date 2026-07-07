import 'package:flutter/material.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

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
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 100),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/test/image 6.png", width: 100),
                            CustameText(
                              text: "Humburger",
                              weight: FontWeight.bold,
                            ),
                            CustameText(text: "Veggie Burger"),
                          ],
                        ),
                        Column(
                          children: [
                            CustameText(text: "Humburger"),
                            CustameText(text: "Veggie Burger"),
                            CustameText(text: "price:3"),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    CustameButton(text: "Reorder", width: double.infinity),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
