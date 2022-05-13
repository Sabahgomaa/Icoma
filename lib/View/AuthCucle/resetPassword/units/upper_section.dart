import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Enter Your New Password',style: TextStyle(color: defultcolor,fontWeight: FontWeight.bold,fontSize:18 ),),
      ],
    );
  }
}
