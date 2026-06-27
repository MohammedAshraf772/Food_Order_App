import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/constants/app_colors.dart';
import 'package:food_order_app/feutuar/home/widget/cart_item.dart';
import 'package:food_order_app/shared/custame_text.dart';
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
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/logo/Hungry_.svg",
                              color: AppColors.primaryColor,
                              height: 35,
                            ),
                            Gap(5),
                            CustameText(
                              text: "Hello ,",
                              size: 18,
                              weight: FontWeight.bold,
                              color: Colors.green.shade300,
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(radius: 40),
                      ],
                    ),
                    Gap(5),
                    Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(15),

                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.search),
                          hintText: "search...",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    Gap(7),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(category.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? AppColors.primaryColor
                                    : Color(0xffF3F4F6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                              child: CustameText(
                                text: category[index],
                                weight: FontWeight.w600,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          );
                        }),
                      ),
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
                  return CartItem(
                    image: "assets/test/image 6.png",
                    text: "text",
                    desc: "desc",
                    rate: "rate",
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
