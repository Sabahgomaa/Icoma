import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/cubit.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/states.dart';
import 'package:icoma/View/AuthCucle/signIn/Unit/lower_section.dart';
import 'package:icoma/View/AuthCucle/signIn/Unit/signin_field.dart';
import 'package:icoma/View/AuthCucle/signIn/Unit/upper_section.dart';
import 'package:icoma/View/home_screen.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInStates>(
        listener: (context, state) {
          if (state is SignInSuccessState) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    child: Column(children: const [
                      UperSection(),
                      SizedBox(
                        height: 20.0,
                      ),
                      SignInField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      LowerSection(),
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
