import 'package:dartz/dartz.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/core/errors/failure.dart';
import 'package:user_fruit_app/core/models/product_model.dart';
import 'package:user_fruit_app/core/repos/products_repo/products_repo.dart';
import 'package:user_fruit_app/core/services/database_service.dart';
import 'package:user_fruit_app/core/utils/backend_endpoint.dart';

class ProductRepoImpl extends ProductsRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getBsetSellingProducts()async {
 


 try {
      var data =
          await databaseService.getData(path: BackendEndpoint.getProducts,
          query: {
'limit':10,
'orderBy':'sellingCount',
'descending':true,


          })
              as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return right(products);
    } catch (e) {
      return left(ServerFailure('Failed To get Products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data =
          await databaseService.getData(path: BackendEndpoint.getProducts)
              as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return right(products);
    } catch (e) {
      return left(ServerFailure('Failed To get Products'));
    }
  }
}
