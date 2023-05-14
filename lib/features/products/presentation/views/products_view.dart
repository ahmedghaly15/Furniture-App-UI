import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/global/app_assets.dart';
import 'package:furniture_app/features/products/presentation/widgets/product_view_body.dart';

import '../../../../core/global/app_colors.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ProductsViewBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text("Dashboard"),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.notification),
        ),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: AppColors.kPrimaryColor,
        statusBarBrightness: Brightness.light,
      ),
    );
  }
}
