import 'package:flutter/material.dart';
import 'package:shopping_app/details/details_screen.dart';

import 'package:shopping_app/enums.dart';
import 'package:shopping_app/home/components/collection_card.dart';
import 'package:shopping_app/home/components/custom_bottom_nav_bar.dart';
import 'package:shopping_app/home/components/product_card.dart';
import 'package:shopping_app/home/components/section_title.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/home/components/home_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  HomeIconButton(
                    svgSrc: "assets/icons/Menu Icon.svg",
                    press: () {},
                  ),
                  const Spacer(),
                  HomeIconButton(
                    svgSrc: "assets/icons/Search Icon.svg",
                    press: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SectionTitle(
                text: "New Arrival",
                press: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      demoProducts.length,
                      (index) => ProductCard(
                        product: demoProducts[index],
                        onPress: () => Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                            product: demoProducts[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SectionTitle(
                text: "Collection",
                press: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              // Container(
              //   width: 150,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(
              //         "assets/images/winter_collection.png",
              //       ),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Stack(children: [
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Blur(
              //           blur: 0.8,
              //           //blurColor: Colors.transparent.withOpacity(0.1),
              //           child: Container(
              //             height: 40,
              //             width: 150,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.horizontal(
              //                 right: Radius.circular(20),
              //                 left: Radius.circular(20),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Positioned(
              //           top: 0,
              //           bottom: 5,
              //           child: const Center(
              //             child: Text(
              //               "WINTER",
              //               style: TextStyle(
              //                   fontSize: 12,
              //                   fontWeight: FontWeight.w600,
              //                   color: Colors.white),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],),
              // ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CollectionCard(
                      svgSrc: "assets/images/winter_collection.png",
                      text: "WINTER",
                    ),
                    CollectionCard(
                      svgSrc: "assets/images/summer_collection.png",
                      text: "SUMMER",
                    ),
                    CollectionCard(
                      svgSrc: "assets/images/spring_collection.png",
                      text: "SPRING",
                    ),
                    CollectionCard(
                      svgSrc: "assets/images/rainy_collection.png",
                      text: "RAINY",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
