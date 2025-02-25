import 'package:user_fruit_app/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_entity.dart';
import 'package:user_fruit_app/features/home/domain/entites/cart_item_entity.dart';

class OrderEntity {
final CartEntity cartEntity;
 bool? payWithCash;
final ShippingAddressEntity? shippingAddressEntity;

  OrderEntity(this.cartEntity,{ this.payWithCash, this.shippingAddressEntity});



}