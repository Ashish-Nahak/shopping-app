import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({
    super.key,
    required this.svgSrc,
    required this.press,
  });
  final String svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(svgSrc),
        ),
      ),
    );
  }
}
