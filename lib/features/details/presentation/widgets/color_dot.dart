import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillClr,
    this.isSelected = false,
  });

  final Color fillClr;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        // 8 padding for left & right
        horizontal: AppConstants.kDefaultPadding / 2.5,
      ),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromARGB(255, 189, 189, 189)
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: fillClr,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
