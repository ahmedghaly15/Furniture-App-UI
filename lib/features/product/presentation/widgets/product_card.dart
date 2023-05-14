import 'package:flutter/material.dart';

import '../../../../core/global/app_constants.dart';
import '../../../../core/models/product.dart';
import 'card_outside_background.dart';
import 'product_image.dart';
import 'product_title_and_price.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
    // required this.onTap,
  });

  final int itemIndex;
  final Product product;
  // final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppConstants.kDefaultPadding,
        vertical: AppConstants.kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        // onTap: onTap,
        child: Stack(
          children: <Widget>[
            CardOutsideBackgrounds(itemIndex: itemIndex),
            ProductImage(
              image: product.image!,
            ),
            ProductTitleAndPrice(
              title: product.title!,
              price: product.price!,
            ),
          ],
        ),
      ),
    );
  }
}
