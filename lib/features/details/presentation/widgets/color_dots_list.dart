import 'package:flutter/material.dart';

import '../../../../core/global/app_colors.dart';
import '../../../../core/global/app_constants.dart';
import 'color_dot.dart';

class ColorDotsList extends StatelessWidget {
  const ColorDotsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppConstants.kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillClr: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillClr: Color(0xFFFF5200),
          ),
          ColorDot(
            fillClr: AppColors.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
