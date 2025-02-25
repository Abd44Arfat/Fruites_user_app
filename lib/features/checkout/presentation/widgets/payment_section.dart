import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/order_summery_widget.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/payment_item.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/shipping_Address_widget.dart' show ShippingAddressWidget;

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,

children: [
SizedBox(height: 24,),
OrderSummryWidget(),

  const SizedBox(
          height: 16,
        ),
        // ShippingAddressWidget(
        
        // ),

],

    );
  }
}