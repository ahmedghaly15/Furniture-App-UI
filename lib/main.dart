import 'package:flutter/material.dart';
import 'package:furniture_app/features/product/presentation/views/product_view.dart';

void main() => runApp(const FurnitureApp());

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductView(),
    );
  }
}
