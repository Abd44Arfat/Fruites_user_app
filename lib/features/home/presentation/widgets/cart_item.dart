import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_fruit_app/core/utils/app_colors.dart';
import 'package:user_fruit_app/core/widgets/custom_network_image.dart';
import 'package:user_fruit_app/features/home/presentation/widgets/cart_item_action_btn.dart';


import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, });

  @override
  Widget build(BuildContext context) {
   
     
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 73,
                  height: 92,
                  decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
                  child: CustomNetworkImage(
                    imageUrl: '',
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                       'mango',
                            style: TextStyles.bold13,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                             
                            },
                            child: SvgPicture.asset(
                              Assets.imagesTrash,
                            ),
                          )
                        ],
                      ),
                      Text(
                        ' كم',
                        textAlign: TextAlign.right,
                        style: TextStyles.regular13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Row(
                        children: [
                                    CartItemActionButtons(
                            
                          ),
                          const Spacer(),
                          Text(
                            'جنيه ',
                            style: TextStyles.bold16
                                .copyWith(color: AppColors.secondaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      
    
  }
}