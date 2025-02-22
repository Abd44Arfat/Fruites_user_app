import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: 
      
      List.generate(4, (index) =>  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const FeaturedItem(),
      ))
      
      ),
    );
  }
}