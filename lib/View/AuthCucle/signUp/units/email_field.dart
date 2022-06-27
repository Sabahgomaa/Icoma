import 'package:flutter/material.dart';
import 'package:icoma/Widgets/textformfield.dart';

// ignore: must_be_immutable
class EmailField extends StatelessWidget {
  TextEditingController? controller;

   EmailField({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      controller: controller,
      label: 'Email',
      type: TextInputType.emailAddress,
      validate: (value) {
        if (value.isEmpty) {
          return 'email address must not be empty';
        }
        return null;
      },
      suffix: Icons.email_outlined,
    );
  }
}
