import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/core/global/app_constants.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/features/product/presentation/widgets/categories_tab_bar.dart';
import 'package:furniture_app/features/product/presentation/widgets/search_box.dart';

import '../../../../core/global/app_colors.dart';
import 'cards_background.dart';
import 'product_card.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    super.initState();

    setSystemUIOverlayStyle();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SearchBox(),
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
                  product: products[index],
                  itemIndex: index,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: AppColors.kPrimaryColor,
        statusBarBrightness: Brightness.light,
      ),
    );
  }
}
