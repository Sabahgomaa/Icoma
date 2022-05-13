import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/View/AuthCucle/signIn/Model/user.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/states.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit of(context) => BlocProvider.of(context);
  Welcome? signupModel;

  void userSignUp({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    emit(SignUpLoadingState());
    try {
      final response = await Dio().post("https://json.loca.lt/userjson1/",
      data: {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      },
      );
      print(response.data);
      signupModel = Welcome.fromJson(response.data);
      emit(SignUpSuccessState(signupModel!));
    } catch (e, s) {
      print(s);
      emit(SignUpErrorState(e.toString()));
    }
  }
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(SignUpChangePasswordVisibilityState());
  }
}