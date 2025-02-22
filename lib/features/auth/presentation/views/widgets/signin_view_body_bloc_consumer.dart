
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:user_fruit_app/core/helper_functions/build_error_bar.dart';
import 'package:user_fruit_app/core/widgets/custom_progress_hud.dart';
import 'package:user_fruit_app/features/auth/presentation/cubits/cubit/sign_in_cubit.dart';
import 'package:user_fruit_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:user_fruit_app/features/home/presentation/views/main_view.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, MainView.routeName);
        }
        if (state is SignInFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(isLoading: state is SignInLoading ? true: false, child: const LoginViewBody(),);
      },
    );
  }
}

