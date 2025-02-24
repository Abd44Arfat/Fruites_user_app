import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/utils/app_colors.dart';
import 'package:user_fruit_app/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.text, required this.index});
final String text;
final  String index;
  @override
  Widget build(BuildContext context) {
    return  Row(

mainAxisAlignment: MainAxisAlignment.center,

children: [
CircleAvatar(
radius: 11.5,
backgroundColor: Color(0xfff2f3f3),
child:Text(index,style: TextStyles.semiBold13,)

),
const SizedBox(width: 4,),

Text(text,style: TextStyles.bold13.copyWith(color: Color(0xffaaaaaa)))


],

    );
  }
}