import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/cart/widget/card_item.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int number = 1;
  void onAdd() {
    setState(() {
      if (number > 1) {
        number++;
      }
    });
  }

  void onMin() {
    setState(() {
      number--;
    });
  }

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
          itemCount: 4,
          itemBuilder: (context, index) {
            return CardItem(
              image: "assets/test/image 6.png",
              text: "Humburger",
              desc: "Veggie Burger",
              num: number,
              onAdd: onAdd,
              onMin: onMin,
            );
          },
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustameText(text: "Total", size: 30),
              CustameText(text: "\$18.9", size: 30),
            ],
          ),
          CustameButton(text: "Checkout", ontap: () {}),
        ],
      ),
    );
  }
}
