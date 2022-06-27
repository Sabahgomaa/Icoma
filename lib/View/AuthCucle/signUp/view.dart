import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signUp/units/signup_form.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SignUpFormField(),
          ),
        ),
      ),
    );
  }
}
