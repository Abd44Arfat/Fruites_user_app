import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/order_entity.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_entity.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_item_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key,  required this.cartEntity});
  static const routeName = 'checkout';

  final CartEntity cartEntity ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: buildAppBar(context, title: 'الشحن',showNotification: false),
body:Provider.value(
  value:OrderEntity(cartEntity),
  
  child: CheckoutViewBody()), 

    );
  }
}