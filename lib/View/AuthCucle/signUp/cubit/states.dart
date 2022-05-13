import 'package:icoma/View/AuthCucle/signIn/Model/user.dart';

abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
  final Welcome signUpModel;

  SignUpSuccessState(this.signUpModel);
}

class SignUpErrorState extends SignUpStates {
  final String error;

  SignUpErrorState(this.error);
}

class SignUpChangePasswordVisibilityState extends SignUpStates {}