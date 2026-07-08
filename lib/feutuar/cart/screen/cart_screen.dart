import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/cart/widget/card_item.dart';
import 'package:food_order_app/feutuar/checkout/screen/checkout_screen.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int itemCount = 20;
  late List<int> quantities;
  initState() {
    quantities = List.generate(itemCount, (_) => 1);
    super.initState();
  }

  void onAdd(index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onMin(index) {
    setState(() {
      if (quantities[index] > 1) quantities[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 20),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return CardItem(
              image: "assets/test/image 6.png",
              text: "Humburger",
              desc: "Veggie Burger",
              num: quantities[index],
              onAdd: () => onAdd(index),
              onMin: () => onMin(index),
            );
          },
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "\$",
                        style: TextStyle(
                          color: Color(0xFF0A472E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustameText(text: "99.19", size: 28),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 180,
                height: 55,
                child: CustameButton(
                  text: "Checkout",
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return CheckoutScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
