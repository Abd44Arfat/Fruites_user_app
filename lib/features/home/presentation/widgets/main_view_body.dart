import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/home/presentation/views/cart_view.dart';
import 'package:user_fruit_app/features/home/presentation/views/products_view.dart';
import 'package:user_fruit_app/features/home/presentation/views/homeview.dart';



class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        Homeview(),
        ProductsView(),
        CartView()
      ],
    );
  }
}