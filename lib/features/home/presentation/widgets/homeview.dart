import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:user_fruit_app/core/cubits/cubit/product_cubit.dart';
import 'package:user_fruit_app/core/repos/products_repo/products_repo.dart';
import 'package:user_fruit_app/core/services/get_it_service.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/home_view_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(getIt.get<ProductsRepo>()),
      child: const HomeViewBody(),
    );
  }
}
