import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/cubit.dart';
import 'package:icoma/Widgets/textformfield.dart';

// ignore: must_be_immutable
class PasswordField extends StatelessWidget {
  TextEditingController? controller;
   PasswordField({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      label: 'Password',
      controller: controller,
      type: TextInputType.visiblePassword,
      validate: (String value) {
        if (value.isEmpty) {
          return 'password is too short';
        }
      },
      suffix: SignUpCubit.of(context).suffix,
      onSubmit: (value) {
        if (SignUpCubit.of(context).formKey.currentState!.validate()) {}
      },
      isPassword:SignUpCubit.of(context).isPassword,
      suffixPressed: () {
        SignUpCubit.of(context).changePasswordVisibility();
      },
    );
  }
}
