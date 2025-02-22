
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_fruit_app/core/helper_functions/on_generate_routes.dart';
import 'package:user_fruit_app/core/services/bloc_observer.dart';
import 'package:user_fruit_app/core/services/get_it_service.dart';
import 'package:user_fruit_app/core/services/shared_prefrences_singlton.dart';
import 'package:user_fruit_app/core/utils/app_colors.dart';
import 'package:user_fruit_app/features/home/presentation/views/home_view.dart';
import 'package:user_fruit_app/firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://sgjospsqtobcvceetrtc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNnam9zcHNxdG9iY3ZjZWV0cnRjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc0NzAxNTksImV4cCI6MjA1MzA0NjE1OX0.OgTudioaEqLU-DSo_gTabH5gfvK79tECJJrgO46NvIU',
  );

  Bloc.observer=CustomBlocObserver();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  await Prefs.init();
  setupGetit();
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Cairo',colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)),
    



  onGenerateRoute: onGenerateRoute,
  initialRoute: HomeView.routeName,
  debugShowCheckedModeBanner: false,
);
  }
}