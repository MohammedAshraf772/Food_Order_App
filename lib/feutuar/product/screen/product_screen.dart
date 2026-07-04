import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/product/widget/spicy_slider.dart';
import 'package:food_order_app/feutuar/product/widget/topping_card.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  double value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SpicySlider(
              value: value,
              onChanged: (v) {
                value = v;
              },
            ),
            Gap(50),
            CustameText(text: "Toppings", size: 20),
            ToppingCard(
              title: "tomato",
              image: "assets/test/pngwing 15.png",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
