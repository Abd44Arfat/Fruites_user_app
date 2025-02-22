import 'dart:io';
import 'dart:ui';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'review_model.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
final File image;
  final bool isFeatured;
  final num sellingCount;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating=0;
  final num ratingCount = 0;
  final int unitAmount;
  final List<ReviewModel> reviews;
  ProductModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.expirationsMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      required this.sellingCount,
      required this.reviews,
      required this.price,
      required this.isOrganic,
      required this.isFeatured,
      required this.image, 
      this.imageUrl});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      expirationsMonths: json['expirationsMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      sellingCount: json['sellingCount'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : [],
      price: json['price'],
      isOrganic: json['isOrganic'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      image: File(json['image']),
    );
  }


  ProductEntity toEntity() {
    return ProductEntity(
        name: name,
        code: code,
        description: description,
        price: price,
        reviews: reviews.map((e) => e.toEntity()).toList(),
        expirationsMonths: expirationsMonths,
        numberOfCalories: numberOfCalories,
        unitAmount: unitAmount,
        isOrganic: isOrganic,
        isFeatured: isFeatured,
        imageUrl: imageUrl, image: image,
        
         );
  }


  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList()
    };
  }
}