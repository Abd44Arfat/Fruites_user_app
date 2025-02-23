import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_item_entity.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());


void updateCartItem(CartItemEntity cartItem){
emit(CartItemUpdated(cartItemEntity:cartItem));
}

}
