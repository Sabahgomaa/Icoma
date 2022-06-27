import 'package:flutter/material.dart';
import '../Const/color.dart';

class CustomeButton extends StatelessWidget {
  final String text;
  final Function() function;
  final bool? isUpperCase;
   // ignore: use_key_in_widget_constructors
   const CustomeButton(
      {required this.text, required this.function, this.isUpperCase});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
         text.toUpperCase(),
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color:defultcolor,
      ),
    );
  }
}