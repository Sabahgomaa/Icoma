import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icoma/Core/dio_helper.dart';
import 'package:icoma/View/AuthCucle/signIn/Cubit/states.dart';
import 'package:icoma/View/AuthCucle/signIn/Model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());

  static SignInCubit of(context) => BlocProvider.of(context);
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  UserModel? _signinmodel;


  Future<void> login({required String email,
    required String password,})async{
    if(!formKey.currentState!.validate()) return;
    emit(SignInLoadingState());

    try{
      final responce= await DioHelper.postData(url: "login",data: {
        'email':email,
        'password':password,
      });
      final data =responce.data;
      user= UserModel.fromJson(data);
      emit(SignInSuccessState(user));
    }catch(e,s){
      if (kDebugMode) {
        print(e);
      }
      if (kDebugMode) {
        print(s);
      }
      emit(SignInErrorState(e.toString()));
    }
  }
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
  }
  emit(SignInChangePasswordVisibilityState());


}

  // Future<void> login() async {
  //   if (!formKey.currentContext!.validate()) return;
  //   formKey.currentContext!.save();
  //   final body = {
  //     'username': username,
  //     'password': password,
  //   };
  //   try {
  //     final resposne =await
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // Future<void> userSignIn(
  //     {required String username, required String password}) async {
  //   emit(SignInLoadingState());
  //   try {
  //     final response =
  //         await Dio().post("https://json.loca.lt/userjson1/", data: {
  //       'username': username,
  //       'password': password,
  //     });
  //     if (kDebugMode) {
  //       print(response.data);
  //     }
  //     _signinmodel = Welcome.fromJson(response.data);
  //     emit(SignInSuccessState(_signinmodel!));
  //   } catch (e, s) {
  //     if (kDebugMode) {
  //       print(s);
  //     }
  //     emit(SignInErrorState(e.toString()));
  //   }
  // }




