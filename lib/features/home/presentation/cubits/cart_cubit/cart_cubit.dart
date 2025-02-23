import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity=CartEntity([]);
void addProduct(ProductEntity productEntity) {
//product exist in cart or not 
bool isProductExist =cartEntity.isExist(productEntity);
var cartItem=cartEntity.getCartItem(productEntity);
if(isProductExist){
cartItem.increaseCount();
}else{
cartEntity.addCartItem(cartItem);
}
emit(CartProductAdded());
}




}

