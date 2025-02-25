import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_fruit_app/core/helper_functions/build_error_bar.dart';
import 'package:user_fruit_app/core/widgets/custom_button.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/order_entity.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/checkout_steps.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener((){
      setState(() {
      currentPageIndex = pageController.page!.round();
    });
    });
  super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
               SizedBox(height: 20),
          CheckoutSteps(
            
            currentPageIndex: currentPageIndex, pageController: pageController),
          SizedBox(height: 20),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            onPressed: () {
              if (context.read<OrderEntity>().payWithCash!=null) {
  pageController.animateToPage(currentPageIndex + 1,duration: Duration(milliseconds: 300), curve: Curves.easeIn);
}else{
buildErrorBar(context,' يرجي تحديد طريقه الدفع');

}
            },
            text: getNextButtonText(currentPageIndex),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

  String getNextButtonText(int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';
      case 2:
        return 'الدفع عبر PayPal';
      default:
        return 'التالي';
    }
  }