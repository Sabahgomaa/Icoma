import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/Core/cache_helper.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/cubit.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/states.dart';
import 'package:icoma/View/home_screen.dart';
import 'package:icoma/Widgets/textformfield.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({Key? key}) : super(key: key);
  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  var emailController = TextEditingController();

  var userNameController = TextEditingController();

  var firstNameController = TextEditingController();

  var lastNameController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var isPassword = true;

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SignUpCubit(),
        child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {},
  builder: (context, state) {
      return  Form(
        key: formKey,
        child: Column(children:[
          Row(
            children:[
              Expanded(
                child: CustomeTextFormField(controller: firstNameController, label: 'First name',type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'first name must not be empty';
                    }
                    return null;
                  },

                ),
              ),
              const SizedBox(
                width: 5.0,
              ),

      Expanded(
        child: CustomeTextFormField(controller: lastNameController, label: 'Last name',type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'last name address must not be empty';
                      }
                      return null;
                    },

                  ),
      ),
              ]),
          const SizedBox(
            height: 15.0,
          ),
          CustomeTextFormField(controller: userNameController, label: 'User Name',type: TextInputType.emailAddress,
            validate: (value) {
              if (value.isEmpty) {
                return 'user name must not be empty';
              }
              return null;
            },
            suffix: Icons.person,
          ),
          CustomeTextFormField(controller: emailController, label: 'Email',type: TextInputType.emailAddress,
            validate: (value) {
              if (value.isEmpty) {
                return 'email address must not be empty';
              }
              return null;
            },
            suffix: Icons.email_outlined,
          ),
          CustomeTextFormField(label: 'Password',
            controller: passwordController,
            type: TextInputType.visiblePassword,
            validate: (String value){
              if (value.isEmpty) {
                return 'password is too short';
              }
            },
            //suffix: cubit.suffix,
            onSubmit: (value) {
              if (formKey.currentState!.validate()) {}
            },
            isPassword: isPassword,
            // suffixPressed: () {
            //   cubit.changePasswordVisibility();
            // },
          ),
          CustomeTextFormField(label: 'Confirm Password',
            controller: passwordController,
            type: TextInputType.visiblePassword,
            validate: (String value){
              if (value.isEmpty) {
                return 'password is too short';
              }
            },
            //suffix: cubit.suffix,
            onSubmit: (value) {
              if (formKey.currentState!.validate()) {}
            },
            isPassword: isPassword,
            // suffixPressed: () {
            //   cubit.changePasswordVisibility();
            // },
          ),
          Row(children:[ Checkbox(onChanged: (bool? value) {  }, value: false,),Text('I agree with terms & Conditions')])
        ]
        )
    );
  }
    )
    );
  }
}
