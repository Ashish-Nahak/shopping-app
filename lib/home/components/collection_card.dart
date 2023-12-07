import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    super.key,
    required this.svgSrc,
    required this.text,
  });

  final String svgSrc, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
      ),
      child: SizedBox(
        height: 200,
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                svgSrc,
                height: 200,
                fit: BoxFit.cover,
              ),
              // ClipRect(
              //   child: BackdropFilter(
              //     filter: ImageFilter.blur(sigmaX: 1, sigmaY: 5),
              //     child:
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              //),
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}
