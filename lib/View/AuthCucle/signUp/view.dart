import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signUp/units/lower_section.dart';
import 'package:icoma/View/AuthCucle/signUp/units/signup_field.dart';
import 'package:icoma/View/AuthCucle/signUp/units/uper_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              child: Column(
                children: const [
                  UperSection(),
                  SizedBox(
                    height: 20.0,
                  ),
                  SignUpFormField(),
                  SizedBox(
                    height: 20.0,
                  ),
                  LowerSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
