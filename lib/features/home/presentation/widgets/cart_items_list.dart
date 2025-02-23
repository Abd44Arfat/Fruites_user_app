import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      
      itemCount: 10,itemBuilder: (context, index) {
      return CartItem();
    },);
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
    
      color: Color(0xfff1f1f5),
      height: 22,
    );
  }
}