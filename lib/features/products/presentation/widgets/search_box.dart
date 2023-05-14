import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/global/app_colors.dart';

import '../../../../core/global/app_assets.dart';
import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    this.onChanged,
  });

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppConstants.kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kDefaultPadding,
        vertical: AppConstants.kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.kWhiteWithOpacity,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        onChanged: onChanged,
        style: AppStyles.textStyle20,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'Search',
          icon: SvgPicture.asset(AppAssets.search),
          hintStyle: AppStyles.textStyle18,
        ),
      ),
    );
  }
}
