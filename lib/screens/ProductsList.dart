import 'package:flutter/material.dart';
import 'package:test_ui/constants/constants.dart';
import 'package:test_ui/models/Product.dart';

import 'ProductCard.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Found \n10 Resuls',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: mpadding * 0.5),
                ...demoData.asMap().entries.map((entry) {
                  if (entry.key % 2 == 0)
                    return ProductCard(product: entry.value);
                  else
                    return Container();
                }).toList()
              ],
            ),
          ),
          SizedBox(width: mpadding),
          Expanded(
            child: Column(
              children: [
                ...demoData.asMap().entries.map((entry) {
                  if (entry.key % 2 != 0)
                    return ProductCard(product: entry.value);
                  else
                    return Container();
                }).toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
