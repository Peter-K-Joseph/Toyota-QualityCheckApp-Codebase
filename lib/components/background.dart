import 'package:flutter/material.dart';

class BackgroundSplashImage extends StatelessWidget {
  const BackgroundSplashImage({Key? key}) : super(key: key);

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
            'images/variant_images/19366.jpg',
          ).image,
        ),
      ),
    );
  }
}
