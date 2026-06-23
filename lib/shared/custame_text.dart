import 'package:flutter/material.dart';

class CustameText extends StatelessWidget {
  const CustameText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
  });
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );
  }
}
