
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:user_fruit_app/features/auth/domain/entities/user_entity.dart';
import 'package:user_fruit_app/features/auth/domain/repos/auth_repo.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;


  Future<void> signin(String email, String password) async {
    emit(SignInLoading());
    var result = await authRepo.signinUserWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }
  Future<void> signinWithGoogle() async {
    emit(SignInLoading());
    var result = await authRepo.signinUserWithGoogle();
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }
    Future<void> signinWithFacebook() async {
    emit(SignInLoading());
    var result = await authRepo.signinUserWithFacebook();
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }


  }



