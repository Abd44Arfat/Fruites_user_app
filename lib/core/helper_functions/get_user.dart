import 'dart:convert';



import 'package:user_fruit_app/constants.dart';
import 'package:user_fruit_app/core/services/shared_prefrences_singlton.dart';
import 'package:user_fruit_app/features/auth/data/models/user_model.dart';
import 'package:user_fruit_app/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}