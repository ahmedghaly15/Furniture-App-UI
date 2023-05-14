import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.kDefaultPadding,
        ),
        height: 160,
        // width is 200 because the image is square but we added 20 + 20 for padding
        width: 200,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
