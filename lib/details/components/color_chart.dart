import 'package:flutter/material.dart';

class ColorChart extends StatelessWidget {
  const ColorChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorCard(
          color: Colors.blue[200],
        ),
        ColorCard(
          color: Colors.green[300],
        ),
        ColorCard(
          color: Colors.orange[300],
        ),
        ColorCard(
          color: Colors.indigo[300],
        ),
      ],
    );
  }
}

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
