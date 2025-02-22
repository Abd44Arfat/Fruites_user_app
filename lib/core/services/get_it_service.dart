

import 'package:get_it/get_it.dart';
import 'package:user_fruit_app/core/repos/products_repo/product_repo_impl.dart';
import 'package:user_fruit_app/core/repos/products_repo/products_repo.dart';
import 'package:user_fruit_app/core/services/database_service.dart';
import 'package:user_fruit_app/core/services/firebase_auth_service.dart';
import 'package:user_fruit_app/core/services/firestore_service.dart';
import 'package:user_fruit_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:user_fruit_app/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());

getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
  databaseService: getIt<DatabaseService>()
 ) );
   getIt.registerSingleton<ProductsRepo>(
 ProductRepoImpl(
  databaseService: getIt<DatabaseService>()
 ));
   
}