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
        Text('FORGOT PASSWORD',style: TextStyle(color: defultcolor,fontWeight: FontWeight.bold,fontSize:18 ),),
        SizedBox(height: 5,),
        Center(child: Text('Please Enter your Email',style: TextStyle(color: defultcolor,fontWeight: FontWeight.bold,fontSize:14),)),
        Text('and Send Code',style: TextStyle(color: defultcolor,fontWeight: FontWeight.bold,fontSize:14),)
      ],
    );
  }
}
