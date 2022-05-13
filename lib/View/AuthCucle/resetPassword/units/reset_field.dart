import 'package:flutter/material.dart';
import 'package:icoma/Widgets/button.dart';
import 'package:icoma/Widgets/textformfield.dart';

class ResetPasswordField extends StatelessWidget {
  const ResetPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var isPassword = true;
    var passwordController = TextEditingController();
    return Form(
        key: formKey,
        child: Column(children:[
     CustomeTextFormField(label: 'Password',
      controller: passwordController,
      type: TextInputType.visiblePassword,
      validate: (String value){
        if (value.isEmpty) {
          return 'password is too short';
        }
      },
      //suffix: cubit.suffix,
      onSubmit: (value) {
        if (formKey.currentState!.validate()) {}
      },
      isPassword: isPassword,
      // suffixPressed: () {
      //   cubit.changePasswordVisibility();
      // },
    ),
    CustomeTextFormField(label: 'Confirm Password',
    controller: passwordController,
    type: TextInputType.visiblePassword,
    validate: (String value){
    if (value.isEmpty) {
    return 'password is too short';
    }
    },
    //suffix: cubit.suffix,
    onSubmit: (value) {
    if (formKey.currentState!.validate()) {}
    },
    isPassword: isPassword,
    // suffixPressed: () {
    //   cubit.changePasswordVisibility();
    // },
    ),
          CustomeButton(text: 'Done', function: () {},
          ),
  ]));}
}
