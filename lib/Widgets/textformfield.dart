import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String label;
  final IconData? suffix;
  final Function(String)? onSubmit;
  final Function(String)? validate;
  final Function(String)? onChange;
  final Function()? suffixPressed;
  final IconData? prefix;
  bool isPassword = false;
  CustomeTextFormField({Key? key,
    required this.label,
    required this.controller,
    this.suffix,
    this.prefix,
    this.onSubmit,
    this.onChange,
    this.suffixPressed,
    this.validate,
    this.isPassword = false,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      //validator: validate,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: defultcolor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: defultcolor,width: 3),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: defultcolor,width: 3)
        ),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffix),color: defultcolor, ) : null,
        )
    );
  }
}