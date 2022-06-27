import 'package:flutter/material.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/form_sigin.dart';

class SignInView extends StatelessWidget {
   const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
          return const Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                    child: LoginForm(),
                  ),
                ),
              ),
    );
  }
}
