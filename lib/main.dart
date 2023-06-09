import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core/global/app_theme.dart';
import '/features/products/presentation/views/products_view.dart';

void main() => runApp(const FurnitureApp());

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(context),
      home: const ProductsView(),
    );
  }
}
