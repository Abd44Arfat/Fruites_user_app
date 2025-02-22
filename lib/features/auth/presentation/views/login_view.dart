import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/services/get_it_service.dart';
import 'package:user_fruit_app/features/auth/domain/repos/auth_repo.dart';
import 'package:user_fruit_app/features/auth/presentation/cubits/cubit/sign_in_cubit.dart';
import 'package:user_fruit_app/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

