import 'package:flutter/material.dart';

import '../../../../core/global/app_colors.dart';
import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';

class CategoriesTabBar extends StatefulWidget {
  const CategoriesTabBar({super.key});

  @override
  State<CategoriesTabBar> createState() => _CategoriesTabBarState();
}

class _CategoriesTabBarState extends State<CategoriesTabBar> {
  int currentCategory = 0;
  List<String> categories = ['All', 'Sofa', 'Park bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppConstants.kDefaultPadding / 2,
      ),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentCategory = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: AppConstants.kDefaultPadding,
              right: index == categories.length - 1
                  ? AppConstants.kDefaultPadding
                  : 0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: index == currentCategory
                  ? AppColors.kWhiteWithOpacity
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Text(
              categories[index],
              style: AppStyles.textStyle14,
            ),
          ),
        ),
      ),
    );
  }
}
