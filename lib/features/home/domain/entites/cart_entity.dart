import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_item_entity.dart';

class CartEntity {
final List<CartItemEntity>cartItems;

  CartEntity( this.cartItems);


double calculateTotalPrice(){
double totalPrice=0;
for(var cartItem in cartItems){
totalPrice+=cartItem.calculateTotalPrice();  
}
return totalPrice;

}
removeCartItem(CartItemEntity cartItem ){

cartItems.remove(cartItem);

}


addCartItem(CartItemEntity cartItemEntity){

cartItems.add(cartItemEntity);
}


bool isExist(ProductEntity product){
for(var cartItem in cartItems){
  if(cartItem.productEntity==product){
return true;
  }
}
return false;
}

//increase on a same cart 
CartItemEntity getCartItem(ProductEntity product){
for(var cartItem in cartItems){
  if(cartItem.productEntity==product){
return cartItem;

  }
}
return CartItemEntity(productEntity: product,count: 1);

}
}
