import 'package:icoma/View/AuthCucle/signIn/Model/user.dart';

abstract class SignInStates {}

class SignInInitialState extends SignInStates {}

class SignInLoadingState extends SignInStates {}

class SignInSuccessState extends SignInStates {
  final UserModel signInModel;

  SignInSuccessState(this.signInModel);
}

class SignInErrorState extends SignInStates {
  final String error;

  SignInErrorState(this.error);
}

class SignInChangePasswordVisibilityState extends SignInStates {}