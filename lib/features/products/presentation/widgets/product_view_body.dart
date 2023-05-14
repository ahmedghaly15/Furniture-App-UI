import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core/global/app_constants.dart';
import '/core/models/product.dart';
import '/features/details/presentation/views/product_details_view.dart';
import '/features/products/presentation/widgets/categories_tab_bar.dart';
import '/features/products/presentation/widgets/search_box.dart';
import 'cards_background.dart';
import 'product_card.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (String value) {},
          ),
          const CategoriesTabBar(),
          const SizedBox(
            height: AppConstants.kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                const CardsBackground(),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    onTap: () => Get.to(
                      () => ProductDetailsView(product: products[index]),
                      transition: Transition.rightToLeft,
                    ),
                    product: products[index],
                    itemIndex: index,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
