import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/core/global/app_constants.dart';
import 'package:furniture_app/core/models/product.dart';
import 'package:furniture_app/features/products/presentation/widgets/categories_tab_bar.dart';
import 'package:furniture_app/features/products/presentation/widgets/search_box.dart';

import '../../../../core/global/app_colors.dart';
import 'cards_background.dart';
import 'product_card.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();

    setSystemUIOverlayStyle();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  onTap: () {},
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
