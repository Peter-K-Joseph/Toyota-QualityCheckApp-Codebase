import 'package:flutter/material.dart';

class BackgroundSplashContainer extends StatelessWidget {
  final Widget child;
  final String? image;
  const BackgroundSplashContainer({Key? key, required this.child, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            image ?? 'images/variant_images/19366.jpg',
          ).image,
        ),
      ),
      child: child,
    );
  }
}
