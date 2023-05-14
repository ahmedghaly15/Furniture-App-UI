import 'package:flutter/material.dart';

import '../../../../core/global/app_colors.dart';
import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.price,
  });

  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kDefaultPadding * 1.5, // 30 padding
        vertical: AppConstants.kDefaultPadding / 4, // 5 top & 5 bottom
      ),
      margin: const EdgeInsets.only(bottom: AppConstants.kDefaultPadding + 3),
      decoration: const BoxDecoration(
        color: AppColors.kSecondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22.0),
          topRight: Radius.circular(22.0),
        ),
      ),
      child: Text(
        "\$ $price",
        style: AppStyles.textStyle16,
      ),
    );
  }
}
