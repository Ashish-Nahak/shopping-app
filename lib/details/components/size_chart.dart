import 'package:flutter/material.dart';

class SizeChart extends StatelessWidget {
  const SizeChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Size(
            text: "S",
          ),
        ),
        Size(
          text: "M",
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Size(
            text: "L",
          ),
        ),
        Size(
          text: "XL",
        ),
      ],
    );
  }
}

class Size extends StatefulWidget {
  const Size({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<Size> createState() => _SizeState();
}

class _SizeState extends State<Size> {
  bool isTapped = false;

  press() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      onHover: (val) {},
      child: Container(
        padding: const EdgeInsets.all(
          5,
        ),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isTapped ? Colors.pinkAccent : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: isTapped ? Colors.white : Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
