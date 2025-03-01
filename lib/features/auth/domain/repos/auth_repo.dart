import 'package:dartz/dartz.dart';
import 'package:user_fruit_app/core/errors/failure.dart';
import 'package:user_fruit_app/features/auth/domain/entities/user_entity.dart';


abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signinUserWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserEntity>> signinUserWithGoogle();
           Future<Either<Failure, UserEntity>> signinUserWithFacebook(
       );

       Future addUserData({required UserEntity user});

              Future<UserEntity> getUserData({required String uid});

          
}
