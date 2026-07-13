import 'package:flutter/material.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/feutuar/auth/widget/custom_user_txtfield.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();
  @override
  void initState() {
    _name.text = "UserName";
    _email.text = "name@gmail.com";
    _address.text = "address";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [Icon(Icons.settings)],
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Gap(15),
          CustomUserTxtfield(lable: "Name", controller: _name),
          Gap(15),
          CustomUserTxtfield(lable: "Email", controller: _email),
          Gap(15),
          CustomUserTxtfield(lable: "Address", controller: _address),
        ],
      ),
    );
  }
}
