import 'package:flutter/material.dart';
import 'package:icoma/Widgets/textformfield.dart';

// ignore: must_be_immutable
class FullNameField extends StatelessWidget {
  TextEditingController? controller;
   FullNameField({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      controller: controller,
      label: 'full name',
      type: TextInputType.emailAddress,
      validate: (value) {
        if (value.isEmpty) {
          return 'first name must not be empty';
        }
        return null;
      },
    );
  }
}
