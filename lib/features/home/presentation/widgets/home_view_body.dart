import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/widgets/best_selling_view.dart';
import 'package:user_fruit_app/core/widgets/search_text_fireld.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/best_selling_header.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/featured_list.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
      
      slivers: [
      
        SliverToBoxAdapter(child: Column(
      children: [
        const CustomHomeAppBar(),
        SizedBox(
          height: 16,
        ),
        const SearchTextField(),
        SizedBox(
          height: 12,
        ),

   const FeaturedList(),
      SizedBox(
          height: 12,
        ),
        const BestSellingHeader(),
 SizedBox(
          height: 12,
        ),
    
      ],
        ),
        
        
        ),
            const BestSellingGridView()
      ],
      
      ),
    );
  }
}