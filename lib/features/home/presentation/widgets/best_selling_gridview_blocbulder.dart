import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/helper_functions/get_dummy_products.dart';
import 'package:user_fruit_app/core/widgets/best_selling_view.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/custom_error_widget.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return BestSellingGridView(products: state.products);
        } else if (state is ProductFailure) {
          // Display the error message from ProductFailure
          return SliverToBoxAdapter(
            child: CustomErrorWidget(text: state.errorMessage),
          );
        } else {
          // Show skeleton loading state while fetching data
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(products: getDummyProducts()),
          );
        }
      },
    );
  }
}