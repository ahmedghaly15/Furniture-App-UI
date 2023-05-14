import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/global/app_assets.dart';
import '../../../../core/global/app_constants.dart';
import '../../../../core/global/app_styles.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppConstants.kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kDefaultPadding,
        vertical: AppConstants.kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: <Widget>[
          TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.chat,
              height: 18,
            ),
            label: const Text(
              "Chat",
              style: AppStyles.textStyle16,
            ),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.shoppingBag,
              height: 18,
            ),
            label: const Text(
              "Add to Cart",
              style: AppStyles.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
