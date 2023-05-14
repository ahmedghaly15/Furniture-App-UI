import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kDefaultPadding,
      ),
      child: Text(
        title,
        style: AppStyles.textStyle18.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
