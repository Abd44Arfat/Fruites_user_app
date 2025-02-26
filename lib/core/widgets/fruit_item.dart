import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/entities/product_entity.dart';
import 'package:user_fruit_app/core/utils/app_colors.dart';
import 'package:user_fruit_app/core/utils/app_text_styles.dart';
import 'package:user_fruit_app/core/widgets/custom_network_image.dart';
import 'package:user_fruit_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Keep the height
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align items at the start
              children: [
                const SizedBox(height: 20), // Adjust this as needed

                productEntity.imageUrl != null
                    ? Flexible(
                      child: CustomNetworkImage(
                        imageUrl: productEntity.imageUrl!,
                      ),
                    )
                    : Container(color: Colors.grey, height: 100, width: 100),

                const SizedBox(height: 24),
                ListTile(
                  title: Text(
                    productEntity.name,
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${ productEntity.price}جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'كيلو',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  trailing: GestureDetector(
                    onTap: () {

context.read<CartCubit>().addProduct(productEntity);

                    },
                    child: const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
