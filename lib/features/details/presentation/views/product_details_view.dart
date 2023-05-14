import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '/core/global/app_assets.dart';
import '/core/global/app_colors.dart';
import '/core/global/app_constants.dart';
import '/core/global/app_styles.dart';
import '/core/models/product.dart';
import '/features/details/presentation/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ProductDetailsViewBody(product: product),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.kBackgroundColor,
      title: Text(
        "Back".toLowerCase(),
        style: AppStyles.textStyle14.copyWith(
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        padding: const EdgeInsets.only(left: AppConstants.kDefaultPadding),
        icon: SvgPicture.asset(AppAssets.back),
        onPressed: () => Get.back(),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.cartWithItem),
        ),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.kPrimaryColor,
        statusBarColor: AppColors.kBackgroundColor,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }
}
