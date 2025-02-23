import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/core/repos/products_repo/products_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productsRepo) : super(ProductInitial());
final ProductsRepo productsRepo;
int productsLength=0;
Future <void>getProducts()async {
emit(ProductLoading());
final result=await productsRepo.getProducts();
result.fold((failure)=>emit(ProductFailure(errorMessage: failure.message)), 
(products){
  productsLength=products.length;
  emit(ProductSuccess(products));
  });

}

Future<void> getBestSellingProducts() async {
  emit(ProductLoading());
  try {
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) => emit(ProductFailure(errorMessage: failure.message)),
      (products) => emit(ProductSuccess(products)),
    );
  } catch (e) {
    emit(ProductFailure(errorMessage: e.toString())); // Catch unexpected errors
    debugPrint("Error fetching products: $e");
  }
}
}
