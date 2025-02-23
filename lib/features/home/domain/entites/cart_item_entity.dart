import 'package:user_fruit_app/core/entities/product_entity.dart';

class CartItemEntity {
  
final ProductEntity productEntity;
int count;

  CartItemEntity({required this.productEntity,this.count =0});

num calculateTotalPrice(){

return productEntity.price*count;

}

calculateTotalWeight(){

return productEntity.unitAmount*count;

}

increaseCount(){

  count++;
}

decreaseCount(){
count--;

}}