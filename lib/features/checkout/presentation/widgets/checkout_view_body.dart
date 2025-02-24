import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/widgets/custom_button.dart';
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
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
               SizedBox(height: 20),
          CheckoutSteps(),
          SizedBox(height: 20),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
            onPressed: () {
              print("Button pressed!"); // Debugging line
              pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            text: 'التالي',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}