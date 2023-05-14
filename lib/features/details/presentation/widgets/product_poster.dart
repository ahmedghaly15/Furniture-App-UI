import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppConstants.kDefaultPadding,
      ),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.fill,
            height: size.width * 0.8,
            width: size.height * 0.8,
          ),
        ],
      ),
    );
  }
}
