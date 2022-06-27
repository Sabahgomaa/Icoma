import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/Core/cache_helper.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/email_field.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/forget_password_button.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/login_button.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/lower_section.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/password_field.dart';
import 'package:icoma/View/AuthCucle/signIn/Component/upper_section.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/cubit.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/states.dart';
import 'package:icoma/View/MainScreens/Screens/HomePage.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInStates>(
        listener: (context, state) {
          if (state is SignInSuccessState) {

            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home( )));
            if (kDebugMode) {
              print(state.signInModel.token);
            }
          }
          if (state is SignInErrorState) {
            if (kDebugMode) {
              print(state.error);
            }
          }
        },
        builder: (context, state) {
          return Form(
            key: SignInCubit.of(context).formKey,
            child: Column(
              children: [
                const UperSection(),
                const SizedBox(
                  height: 20.0,
                ),
                EmailField(
                ),
                const SizedBox(
                  height: 15.0,
                ),
                 PasswordField(),
                const SizedBox(
                  height: 5.0,
                ),
                 const ForgetPasswordField(),
                 LoginButton(),
                const LowerSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}
