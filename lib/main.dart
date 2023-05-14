import 'package:flutter/material.dart';
import 'package:furniture_app/core/global/app_theme.dart';
import 'package:furniture_app/features/product/presentation/views/product_view.dart';

void main() => runApp(const FurnitureApp());

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(context),
      home: const ProductView(),
    );
  }
}
