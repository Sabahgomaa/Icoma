import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';

// ignore: must_be_immutable
class CustomeTextButton extends StatelessWidget {
  Function() function;
  String text;
  CustomeTextButton({Key? key, required this.text, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(color: defultcolor),
      ),
    );
  }
}