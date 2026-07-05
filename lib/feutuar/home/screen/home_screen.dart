import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/feutuar/home/widget/cart_item.dart';
import 'package:food_order_app/feutuar/home/widget/category_home.dart';
import 'package:food_order_app/feutuar/home/widget/search_field.dart';
import 'package:food_order_app/feutuar/home/widget/user_header.dart';
import 'package:food_order_app/feutuar/product/screen/product_details_screen.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List category = ["All", "combo", "sliders", "classic"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Gap(75),
                    UserHeader(),
                    Gap(5),
                    SearchField(),
                    Gap(7),
                    CategoryHome(
                      selectedIndex: selectedIndex,
                      category: category,
                    ),
                    Gap(25),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 6, (
                  context,
                  index,
                ) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) {
                            return ProductDetailsScreen();
                          },
                        ),
                      );
                    },
                    child: CartItem(
                      image: "assets/test/image 6.png",
                      text: "text",
                      desc: "desc",
                      rate: "rate",
                    ),
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
