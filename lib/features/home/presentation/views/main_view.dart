import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/home/presentation/views/cart_view.dart';
import 'package:user_fruit_app/features/home/presentation/views/products_view.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/custom_bottom_navigation.dart';
import 'package:user_fruit_app/features/home/presentation/views/homeview.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = '/home-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0; // Remove 'final' to make it mutable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          // Update the currentViewIndex and trigger a rebuild
         
            currentViewIndex = index;
       setState(() {

       });
        },
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl, // Use TextDirection.ltr for left-to-right
          child:CartView()), // Replace(),

// IndexedStack(index: currentViewIndex, children: const [Homeview(), ProductsView(),CartView()]),

        
      ),
    );
  }
}