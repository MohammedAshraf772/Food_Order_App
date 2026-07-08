import 'package:flutter/material.dart';
import 'package:food_order_app/shared/custame_text.dart';
import 'package:gap/gap.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    required this.texes,
    required this.fees,
    required this.total,
  });
  final String order, texes, fees, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkOutWidget("order", order, false, false, false),
        checkOutWidget("Texes", texes, false, false, false),
        checkOutWidget("Delivery fees", fees, false, false, false),
        Gap(10),
        Divider(),
        Gap(10),
        checkOutWidget("Total : ", total, true, false, false),
        Gap(10),
        checkOutWidget(
          "Estimanaate delivery time : ",
          "15-30 min ",
          true,
          true,
          true,
        ),
      ],
    );
  }
}

Widget checkOutWidget(title, price, isBold, isSmall, bool bool) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustameText(
        text: title,
        size: isSmall ? 10 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w300,
        color: isBold ? Colors.black : Colors.grey.shade600,
      ),
      CustameText(
        text: "$price\$",
        size: isSmall ? 10 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w300,
        color: isBold ? Colors.black : Colors.grey.shade600,
      ),
    ],
  );
}
