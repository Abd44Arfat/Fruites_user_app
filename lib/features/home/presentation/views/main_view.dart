import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/custom_bottom_navigation.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/main_view_body_bloc_consumer.dart';


class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: (index) {
            currentViewIndex = index;

            setState(() {});
          },
        ),
        body: SafeArea(
          child: Directionality(
             textDirection: TextDirection.rtl,
            child: MainViewBodyBlocConsumer(currentViewIndex: currentViewIndex)),
        ),
      ),
    );
  }
}