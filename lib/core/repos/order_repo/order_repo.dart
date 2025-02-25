import 'package:dartz/dartz.dart';
import 'package:user_fruit_app/core/errors/failure.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/order_entity.dart';


abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required OrderInputEntity order});
}