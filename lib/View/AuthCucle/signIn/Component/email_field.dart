import 'package:flutter/material.dart';
import 'package:icoma/Widgets/textformfield.dart';

// ignore: must_be_immutable
class EmailField extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
   EmailField({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomeTextFormField(
      controller: emailController,
      label: 'Email',
      type: TextInputType.emailAddress,
      validate: (value) {
        if (value.isEmpty) {
          return 'email address must not be empty';
        }
        return null;
      },
      suffix: Icons.email,
    );

  }
}
