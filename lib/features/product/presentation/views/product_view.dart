import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/global/app_assets.dart';
import 'package:furniture_app/features/product/presentation/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ProductViewBody(),
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
    );
  }
}
