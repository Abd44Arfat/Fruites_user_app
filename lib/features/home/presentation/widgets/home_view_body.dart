import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/widgets/best_selling_view.dart';
import 'package:user_fruit_app/core/widgets/search_text_fireld.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/best_selling_gridview_blocbulder.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/best_selling_header.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/featured_list.dart';


class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}
class _HomeViewBodyState extends State<HomeViewBody> {
  @override

initState() {
context.read<ProductCubit>().getBestSellingProducts();
    super.initState();
  }

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
            BestSellingGridViewBlocBuilder()
      ],

      ),
    );
  }
}

