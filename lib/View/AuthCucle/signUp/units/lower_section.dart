
import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signIn/view.dart';
import 'package:icoma/Widgets/button.dart';
import 'package:icoma/Widgets/textbutton.dart';

class LowerSection extends StatelessWidget {
  const LowerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeButton(text: 'Sign up', function: () {  },),
        Row(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Text('Already have an account?'),
          CustomeTextButton(function: () {  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInView()),
          ); }, text: 'Login',)
        ],)
      ],
    );
  }
}
