import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/resetPassword/units/reset_field.dart';
import 'package:icoma/View/AuthCucle/resetPassword/units/upper_section.dart';

class ResetView extends StatelessWidget {
  const ResetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center( child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(child:
              Column(children:const [
                UpperSection(),
                SizedBox(
                  height: 20.0,
                ),
                ResetPasswordField(),
              ]),
              ),
            ))));
  }
}
