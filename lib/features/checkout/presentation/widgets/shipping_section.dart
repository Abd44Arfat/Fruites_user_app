import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {

  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return  Column(

children: [
     const SizedBox(
          height: 33,
        ),
ShippingItem(title: 'fbfb', subTitle: 'dvsdbv', price: '20', isSelected: selectedIndex==0 , onTap: () { 

selectedIndex=0;
setState(() {
  
});
 },),

     const SizedBox(
          height: 16,
        ),

ShippingItem(title: 'fbfb', subTitle: 'dvsdbv', price: '20', isSelected: selectedIndex==1, onTap: () { 

selectedIndex=1;
setState(() {
  
});
 },)


],

    );
  }
}