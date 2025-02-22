import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const routeName = "onBoarding";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(child: OnboardingViewBody()),
    );
  }
}