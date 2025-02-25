import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/helper_functions/build_error_bar.dart';
import 'package:user_fruit_app/core/widgets/custom_progress_hud.dart';
import 'package:user_fruit_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
if (state is AddOrderSuccess) {

buildErrorBar(context, 'تمت العمليه بنجاح');

}

if (state is AddOrderFailure) {

buildErrorBar(context, state.message);

}

      },
      builder: (context, state) {
        return CustomProgressHud(isLoading: state is AddOrderLoading,
        child: child,);
      },
    );
  }
}
