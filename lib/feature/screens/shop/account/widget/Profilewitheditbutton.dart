import 'package:flutter/material.dart';

import '../../../../../common/button/circulariconbutton.dart';
import '../../../../../constant/imageconstant.dart';

class Profilewitheditbutton extends StatelessWidget {
  const Profilewitheditbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE), // Vx.gray200 replacement
              shape: BoxShape.circle, // roundedFull equivalent
            ),
            child: Center(
              child: const Image(
                width: 80,
                height: 60,
                color: Color(0xFFBDBDBD), // Vx.gray400 replacement
                fit: BoxFit.contain,
                image: AssetImage(ImageCons.person),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CustomIconButton(
              icon: Icons.edit,
              size: 18,
              minimumSize: const Size(30, 30),
              backgroundColor: Colors.white,
              iconColor: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
