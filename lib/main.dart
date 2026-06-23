import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/auth/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food_Order_Hunger",
      home: LoginScreen(),
    );
  }
}
