import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';

class CustameTextfield extends StatefulWidget {
  const CustameTextfield({
    super.key,
    required this.hint,
    required this.ispassword,
    required this.controller,
  });
  final String hint;
  final bool ispassword;
  final TextEditingController controller;

  @override
  State<CustameTextfield> createState() => _CustameTextfieldState();
}

class _CustameTextfieldState extends State<CustameTextfield> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.ispassword;
    super.initState();
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 20,
      cursorColor: AppColors.primaryColor,
      validator: (v) {
        if (v == null) {
          return "please fill ${widget.hint}";
        }
        null;
      },
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.ispassword
            ? GestureDetector(
                onTap: _togglePassword,
                child: Icon(CupertinoIcons.eye),
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: widget.hint,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
