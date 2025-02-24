
import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/address_input_section.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/checkout_steps.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/payment_section.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
      itemCount: getPages().length,
      itemBuilder:(context,index){
      
      return getPages()[index];
      
      } ,
      
      ),
    );
  }
}


List <Widget>getPages(){
return[
 ShippingSection(),
AddressInputSection(),
PaymentSection(),
];


}