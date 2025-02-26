import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/repos/products_repo/products_repo.dart';
import 'package:user_fruit_app/core/services/get_it_service.dart';


import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(getIt.get<ProductsRepo>()),
      child: const HomeViewBody(),
    );
  }
}
