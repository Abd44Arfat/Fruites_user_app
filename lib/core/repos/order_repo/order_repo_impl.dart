import 'package:dartz/dartz.dart';

import 'package:user_fruit_app/core/errors/failure.dart';
import 'package:user_fruit_app/core/repos/order_repo/order_repo.dart';
import 'package:user_fruit_app/core/services/database_service.dart';
import 'package:user_fruit_app/core/utils/backend_endpoint.dart';
import 'package:user_fruit_app/features/checkout/data/models/order_model.dart';
import 'package:user_fruit_app/features/checkout/domain/entites/order_entity.dart';


class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService dataBaseService;

  OrdersRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, void>> addOrder(
      {required OrderInputEntity order}) async {
    try {
      var orderModel = OrderModel.fromEntity(order);
      await dataBaseService.addData(
        path: BackendEndpoint.addOrder,
        documentId: orderModel.orderId,
        data: orderModel.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}