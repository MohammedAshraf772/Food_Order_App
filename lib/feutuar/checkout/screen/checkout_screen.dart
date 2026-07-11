import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/checkout/widget/order_details_widget.dart';
import 'package:food_order_app/shared/custame_button.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectMethod = 'cash';
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
              onTap: () {
                setState(() => selectMethod = 'cash');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              tileColor: Color(0xff3C2F2F),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              leading: Image.asset(
                "assets/test/dollar.png",
                width: 50,
                height: 35,
              ),
              title: CustameText(text: "cash on Delivery", color: Colors.white),
              trailing: Radio<String>(
                activeColor: Colors.white,
                value: "cash",
                groupValue: selectMethod,
                onChanged: (v) {
                  setState(() {
                    selectMethod = v!;
                  });
                },
              ),
            ),
            Gap(15),
            ListTile(
              onTap: () {
                setState(() => selectMethod = 'visa');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              tileColor: Colors.blue.shade900,
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              leading: Image.asset(
                "assets/test/visa-logo.png",
                width: 50,
                height: 50,
              ),
              title: CustameText(text: "Debit card", color: Colors.white),
              subtitle: CustameText(
                text: '**** **** **** 2536',
                color: Colors.white,
              ),
              trailing: Radio<String>(
                activeColor: Colors.white,
                value: "visa",
                groupValue: selectMethod,
                onChanged: (v) {
                  setState(() {
                    selectMethod = v!;
                  });
                },
              ),
            ),
            Gap(5),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.red,
                  value: true,
                  onChanged: (v) {},
                ),
                CustameText(text: "save card details future payments"),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustameText(text: "Total", size: 30),
                  CustameText(text: "\$18.9", size: 30),
                ],
              ),
              CustameButton(text: "Add To Cart", ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
