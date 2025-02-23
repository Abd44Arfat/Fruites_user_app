import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/widgets/custom_button.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/cart_header.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/cart_items_list.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                 
                  buildAppBar(
                    context,
                    title: 'السلة',
                    showNotification: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CartHeader(),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
         
                
              child:    CustomDivider(),
            ),
            CartItemsList(
         
            ),
            SliverToBoxAdapter(
         
                   child:  CustomDivider(),
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .07,
          child:  CustomButton(onPressed: () {  }, text: 'الدفع 120 جنيه',),
        )
      ],
    );
  }
}