import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/auth/presentation/views/login_view.dart';
import 'package:user_fruit_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:user_fruit_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:user_fruit_app/features/home/presentation/views/main_view.dart';
import 'package:user_fruit_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:user_fruit_app/features/splash/presentation/views/splash_view.dart';


Route<dynamic> onGenerateRoute (RouteSettings settings){

switch(settings.name){
case OnBoardingView.routeName:
return MaterialPageRoute(builder: (context)=> const OnBoardingView());

case BestSellingView.routeName:
return MaterialPageRoute(builder: (context)=> const BestSellingView());

case SplashView.routeName:
return MaterialPageRoute(builder: (context)=> const SplashView());
case LoginView.routeName:
return MaterialPageRoute(builder: (context)=> const LoginView());
case SignUpView.routeName:
return MaterialPageRoute(builder: (context)=> const SignUpView());

case MainView.routeName:
return MaterialPageRoute(builder: (context)=> const MainView());
default:
return MaterialPageRoute(builder: (context)=> const Scaffold());



}



}