import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/constants.dart';
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/widgets/search_text_fireld.dart';
import 'package:user_fruit_app/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:user_fruit_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:user_fruit_app/features/home/presentation/views/widgets/featured_list.dart';

import 'products_grid_view.dart';
import 'products_grid_view_bloc_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: kTopPaddding,
                ),
                CustomHomeAppBar(),
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12,
                ),
                FeaturedList(),
                SizedBox(
                  height: 12,
                ),
                BestSellingHeader(),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          ProductsGridViewBlocBuilder()
        ],
      ),
    );
  }
}
