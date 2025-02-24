import 'package:flutter/material.dart';
import 'package:user_fruit_app/core/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Column(children: [
      
      CustomTextFormField(hintText: 'البريد الإلكتروني', textInputType: TextInputType.text),
      SizedBox(height: 16,),
      CustomTextFormField(hintText: 'العنوان', textInputType: TextInputType.text),
      SizedBox(height: 16,),

      CustomTextFormField(hintText: 'المدينه', textInputType: TextInputType.text),
      SizedBox(height: 16,),

      CustomTextFormField(hintText: 'رقم الطابق , رقم الشقه ..', textInputType: TextInputType.text),
      SizedBox(height: 16,),

      CustomTextFormField(hintText: 'رقم الهاتف', textInputType: TextInputType.phone),
      
      
      ],),
    );
  }
}