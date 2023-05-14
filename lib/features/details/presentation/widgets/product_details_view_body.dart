import 'package:flutter/material.dart';
import 'package:furniture_app/core/global/app_colors.dart';
import 'package:furniture_app/core/global/app_constants.dart';
import 'package:furniture_app/core/global/app_styles.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/features/details/presentation/widgets/product_poster.dart';

import 'chat_and_add_to_cart.dart';
import 'color_dots_list.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.kDefaultPadding),
            decoration: const BoxDecoration(
              color: AppColors.kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: ProductPoster(
                    size: size,
                    image: product.image!,
                  ),
                ),
                const ColorDotsList(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppConstants.kDefaultPadding / 2,
                  ),
                  child: Text(
                    product.title!,
                    style: AppStyles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "\$ ${product.price}",
                  style: AppStyles.textStyle16.copyWith(
                    color: AppColors.kSecondaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppConstants.kDefaultPadding / 2,
                  ),
                  child: Text(
                    product.description!,
                    style: AppStyles.textStyle14.copyWith(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: AppConstants.kDefaultPadding,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          const ChatAndAddToCart(),
        ],
      ),
    );
  }
}
