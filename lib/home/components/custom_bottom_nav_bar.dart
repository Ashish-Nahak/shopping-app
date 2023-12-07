import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    ColorFilter color1 = const ColorFilter.mode(Colors.pink, BlendMode.srcIn);

    ColorFilter color2 = const ColorFilter.mode(Colors.grey, BlendMode.srcIn);

    return Container(
      height: 50,
      width: double.infinity,
      // padding: EdgeInsets.symmetric(
      //   vertical: 14,
      // ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFF0ADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              colorFilter: MenuState.home == selectedMenu ? color1 : color2,
              // const ColorFilter.mode(
              //   Colors.pink,
              //   BlendMode.srcIn,
              // ),
            ),
          ),
          IconButton(
            iconSize: 100,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              colorFilter:
                  MenuState.favourite == selectedMenu ? color1 : color2,

              //colorFilter: ColorFilter.mode(Colors.pink, BlendMode.srcIn),
            ),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              colorFilter: MenuState.message == selectedMenu ? color1 : color2,

              //colorFilter: ColorFilter.mode(Colors.pink, BlendMode.srcIn),
            ),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              colorFilter: MenuState.profile == selectedMenu ? color1 : color2,
              //colorFilter: ColorFilter.mode(Colors.pink, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
