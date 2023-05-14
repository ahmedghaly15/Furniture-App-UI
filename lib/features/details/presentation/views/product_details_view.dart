import 'package:flutter/material.dart';
import 'package:furniture_app/features/details/presentation/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductDetailsViewBody(),
    );
  }
}
