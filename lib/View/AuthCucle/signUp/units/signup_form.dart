import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/Core/cache_helper.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/cubit.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/states.dart';
import 'package:icoma/View/AuthCucle/signUp/units/email_field.dart';
import 'package:icoma/View/AuthCucle/signUp/units/fullname_filed.dart';
import 'package:icoma/View/AuthCucle/signUp/units/password_field.dart';
import 'package:icoma/View/AuthCucle/signUp/units/sign_up_field.dart';
import 'package:icoma/View/AuthCucle/signUp/units/uper_section.dart';
import 'package:icoma/View/MainScreens/Screens/HomePage.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({Key? key}) : super(key: key);

  @override
  State<SignUpFormField> createState() => SignUpFormFieldState();
}

class SignUpFormFieldState extends State<SignUpFormField> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SignUpCubit(),
        child:
            BlocConsumer<SignUpCubit, SignUpStates>(listener: (context, state) {
          if (state is SignUpSuccessState) {
            CasheHelper.saveData(
                key: 'token', value: state.signUpModel.token);
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home( )));
            if (kDebugMode) {
              print(state.signUpModel.token);
            }
          }
          if (state is SignUpErrorState) {
            if (kDebugMode) {
              print(state.error);
            }
          }
        }, builder: (context, state) {
          return Form(
              key: SignUpCubit.of(context).formKey,
              child: Column(children: [
                const UperSection(),
                const SizedBox(
                  height: 20.0,
                ),
                FullNameField(
                    controller: SignUpCubit.of(context).usernameController),
                const SizedBox(
                  height: 15.0,
                ),
                EmailField(
                  controller: SignUpCubit.of(context).emailController,
                ),
                PasswordField(
                    controller: SignUpCubit.of(context).passwordController),
                Row(children: [
                  Checkbox(
                    onChanged: (value)=>SignUpCubit.of(context).changeCheckBox(value!),
                    value: SignUpCubit.of(context).isChecked,
                    activeColor: defultcolor,
                  ),
                  const Text('I agree with terms & Conditions')
                ]),
                const SizedBox(
                  height: 20.0,
                ),
                const LowerSection(),
              ]));
        }));
  }
}
