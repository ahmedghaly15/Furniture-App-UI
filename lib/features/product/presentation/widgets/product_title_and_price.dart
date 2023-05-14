import 'package:flutter/material.dart';

import 'product_price.dart';
import 'product_title.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({
    super.key,
    required this.price,
    required this.title,
  });

  final int price;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      child: SizedBox(
        height: 136,
        width: size.width - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Spacer(),
            ProductTitle(title: title),
            const Spacer(),
            ProductPrice(
              price: price,
            ),
          ],
        ),
      ),
    );
  }
}
