import 'package:flutter/material.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/active_step_item.dart';
import 'package:user_fruit_app/features/checkout/presentation/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: 


 List.generate(getSteps().length, (index) {

return Expanded(child: StepItem

(text: getSteps()[index], index: (index+1).toString(), isActive: true,));

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