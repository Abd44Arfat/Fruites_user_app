import 'package:equatable/equatable.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';

class CartItemEntity extends Equatable{
  
final ProductEntity productEntity;
int quantity;

  CartItemEntity({required this.productEntity,this.quantity =0});

num calculateTotalPrice(){

return productEntity.price*quantity;

}

calculateTotalWeight(){

return productEntity.unitAmount*quantity;

}

increaseCount(){

  quantity++;
}

decreaseCount(){
quantity--;

}

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];}