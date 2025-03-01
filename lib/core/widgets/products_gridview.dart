import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/core/widgets/fruit_item.dart';
class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});
final List<ProductEntity>products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisExtent: 200, // Ensure this matches the height of FruitItem
        crossAxisSpacing: 16,
        mainAxisSpacing: 16, // Add spacing to the main axis if needed
      ),
      itemBuilder: (context, index) {
        return  FruitItem( productEntity: products[index],
        );
      },
    );
  }
}