import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/product/widget/spicy_slider.dart';
import 'package:food_order_app/feutuar/product/widget/topping_card.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double valu = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpicySlider(
                value: valu,
                onChanged: (v) {
                  setState(() {
                    valu = v;
                  });
                },
              ),
              Gap(20),
              CustameText(text: "Toppings", size: 20),
              Gap(20),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (idex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ToppingCard(
                        title: 'Tomato',
                        image: 'assets/test/pngwing 15.png',
                        onTap: () {},
                      ),
                    );
                  }),
                ),
              ),
              Gap(20),
              CustameText(text: "Side Options", size: 20),
              Gap(20),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (idex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ToppingCard(
                        title: 'Tomato',
                        image: 'assets/test/pngwing 15.png',
                        onTap: () {},
                      ),
                    );
                  }),
                ),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustameText(text: "Total", size: 30),
                      CustameText(text: "\$18.9", size: 30),
                    ],
                  ),
                  CustameButton(text: "Add To Cart", ontap: () {}),
                ],
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
