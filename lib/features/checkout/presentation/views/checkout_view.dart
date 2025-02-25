import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:user_fruit_app/core/helper_functions/get_user.dart';
import 'package:user_fruit_app/core/repos/order_repo/order_repo.dart';
import 'package:user_fruit_app/core/services/get_it_service.dart';
import 'package:user_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/order_entity.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:user_fruit_app/features/checkout/presentation/cubits/add_order_cubit/add_order_cubit.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/add_order_cubit_bloc_builder.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  static const routeName = 'checkout';

  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(getIt.get<OrdersRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'الشحن', showNotification: false),
        body: Provider.value(
          value: OrderInputEntity(
            cartEntity,
            shippingAddressEntity: ShippingAddressEntity(),
            uID: getUser().uId,
          ),

          child: AddOrderCubitBlocBuilder(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
