import 'package:flutter/material.dart';

import '../../../../core/global/app_colors.dart';
import '../../../../core/global/app_constants.dart';

class CardOutsideBackgrounds extends StatelessWidget {
  const CardOutsideBackgrounds({
    super.key,
    required this.itemIndex,
  });

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
        color:
            itemIndex.isEven ? AppColors.kBlueColor : AppColors.kSecondaryColor,
        borderRadius: BorderRadius.circular(22.0),
        boxShadow: const [AppConstants.kDefaultShadow],
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.0),
        ),
      ),
    );
  }
}
