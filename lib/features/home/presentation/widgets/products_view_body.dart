import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:user_fruit_app/core/widgets/search_text_fireld.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/Products_gridview_blocbulder.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/products_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override

  
initState() {
context.read<ProductCubit>().getProducts();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
      
      slivers: [
      
        SliverToBoxAdapter(child: Column(
      children: [

buildAppBar(context,title: 'المنتجات',showBackButton: false),

        SizedBox(
          height: 16,
        ),
        const SearchTextField(),
        SizedBox(
          height: 12,
        ),   
        ProductsHeader(productsLength: context.read<ProductCubit>().productsLength)
      ],
        ),
        ),
            ProductsGridViewBlocBuilder()
      ],

      ),
    );
  }}