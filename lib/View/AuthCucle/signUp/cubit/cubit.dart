import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icoma/Const/end_point.dart';
import 'package:icoma/Core/cach_helper.dart';
import 'package:icoma/Core/dio_helper.dart';
import 'package:icoma/View/AuthCucle/Model/user_model.dart';
import 'package:icoma/View/AuthCucle/signUp/cubit/states.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;


  static SignUpCubit of(context) => BlocProvider.of(context);
  UserModel? signupModel;

  Future<void> userSignUp({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoadingState());
    try {
      final responce = await DioHelper.postData(url: register, data: {
        'email': email,
        'password': password,
        "first_name":name,
      });
      // final data = responce.data;
      signupModel = UserModel.fromJson(responce.data);
      // if (signupModel!.success!) {
      //   CashHelper.cacheUserModel(userModel: signupModel!);
      // }
      // if (kDebugMode) {
      //   print(responce.data);
      // }
      // if (kDebugMode) {
      //   print(CashHelper.getUserInfo);
      // }
      // if (kDebugMode) {
      //   print(CashHelper.getToken);
      // }
      signupModel = UserModel.fromJson(responce.data);
      emit(SignUpSuccessState(signupModel!));
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
      }
      if (kDebugMode) {
        print(s);
      }
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
  void changeCheckBox(bool value) {
    isChecked = value;
    emit(RegisterChangeCheckBoxState());
  }
}
