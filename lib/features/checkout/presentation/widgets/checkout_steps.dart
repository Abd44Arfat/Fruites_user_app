import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_fruit_app/core/helper_functions/build_error_bar.dart';
import 'package:user_fruit_app/features/checkout/domain/entities/order_entity.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/active_step_item.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key,required this.currentPageIndex, required this.pageController});
final currentPageIndex;
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(children: 


 List.generate(getSteps().length, (index) {

return Expanded(child: GestureDetector(
onTap:(){

if (context.read<OrderEntity>().payWithCash!=null) {
  pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
}else{

  buildErrorBar(context,' يرجي تحديد طريقه الدفع');
}

} ,

  child: StepItem
  
  (text: getSteps()[index], index: (index+1).toString(), isActive: index<=currentPageIndex,),
));

    }

    ));
  }
}


List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}