import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/cubit.dart';
import 'package:icoma/Widgets/button.dart';

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
    LoginButton({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();


    @override
  Widget build(BuildContext context) {
    var cubit=SignInCubit.of(context);
    return CustomeButton(
      text: 'log in',
      function: () async {
        if (cubit.formKey.currentState!.validate()) {
          cubit.login(
              email:emailController.text,
              password: passwordController.text).toString();
        }
      },
    );
  }
}
