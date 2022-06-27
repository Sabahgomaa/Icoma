import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/cubit.dart';
import 'package:icoma/Widgets/textformfield.dart';

// ignore: must_be_immutable
class PasswordField extends StatelessWidget {
   PasswordField({Key? key}) : super(key: key);
   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      label: 'Password',
      controller:passwordController,
      type: TextInputType.visiblePassword,
      validate: (String value) {
        if (value.isEmpty) {
          return 'password is too short';
        }
      },
      suffix: SignInCubit.of(context).suffix,
      onSubmit: (value) {
        if (SignInCubit.of(context)
            .formKey
            .currentState!
            .validate()) {}
      },
      isPassword: SignInCubit.of(context).isPassword,
      suffixPressed: () {
        SignInCubit.of(context).changePasswordVisibility();
      },
    );
  }
}

