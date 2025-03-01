import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:user_fruit_app/core/helper_functions/build_error_bar.dart';
import 'package:user_fruit_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

import 'main_view_body.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          buildErrorBar(context, 'تمت العملية بنجاح');
        }
        if (state is CartItemRemoved) {
          buildErrorBar(context, 'تم حذف العنصر بنجاح');
        }
      },
      child: Directionality(textDirection:  TextDirection.rtl,
      child: MainViewBody(currentViewIndex: currentViewIndex)),
    );
  }
}
