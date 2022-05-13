import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/View/AuthCucle/forgetPassword/view.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/cubit.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/states.dart';
import 'package:icoma/View/home_screen.dart';
import 'package:icoma/Widgets/textbutton.dart';
import 'package:icoma/Widgets/textformfield.dart';

import '../../../../Const/color.dart';
import '../../../../Widgets/button.dart';

class SignInField extends StatefulWidget {
  const SignInField({Key? key}) : super(key: key);

  @override
  State<SignInField> createState() => _SignInFieldState();
}

class _SignInFieldState extends State<SignInField> {
  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    var isPassword = true;
    var passwordController = TextEditingController();
    var isCheched = true;
    final SignInCubit cubit = SignInCubit.of(context);
    return BlocProvider(
        create: (BuildContext context) => SignInCubit(),
        child: BlocConsumer<SignInCubit, SignInStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return Form(
                  key: formKey,
                  child: Column(children: [
                    CustomeTextFormField(
                      controller: usernameController,
                      label: 'User Name',
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'email address must not be empty';
                        }
                        return null;
                      },
                      suffix: Icons.email,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    CustomeTextFormField(
                      label: 'Password',
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'password is too short';
                        }
                      },
                      suffix: cubit.suffix,
                      onSubmit: (value) {
                        if (formKey.currentState!.validate()) {}
                      },
                      isPassword: isPassword,
                      suffixPressed: () {
                        cubit.changePasswordVisibility();
                      },
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: defultcolor,
                          fillColor: MaterialStateProperty.all(defultcolor),
                          shape: const CircleBorder(),
                          value: isCheched,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheched = value!;
                            });
                          },
                        ),
                        const Text('Remember me'),
                        const SizedBox(
                          width: 80.0,
                        ),
                        CustomeTextButton(
                          function: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordView()));
                          },
                          text: 'Forgrt password?',
                        )
                      ],
                    ),
                    CustomeButton(
                      text: 'log in',
                      function: () async {
                        if (formKey.currentState!.validate()) {
                          await cubit.userSignIn(
                              username: usernameController.text,
                              password: passwordController.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      },
                    ),
                  ]));
            }));
  }
}
