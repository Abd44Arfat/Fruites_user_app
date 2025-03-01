import 'package:dartz/dartz.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/core/errors/failure.dart';

abstract class ProductsRepo {
Future<Either<Failure,List<ProductEntity>>>getProducts();
Future<Either<Failure,List<ProductEntity>>>getBsetSellingProducts();
}