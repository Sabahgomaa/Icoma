import 'package:icoma/View/AuthCucle/Model/user_model.dart';

abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
  final UserModel signUpModel;

  SignUpSuccessState(this.signUpModel);
}

class SignUpErrorState extends SignUpStates {
  final String error;

  SignUpErrorState(this.error);
}

class SignUpChangePasswordVisibilityState extends SignUpStates {}
class RegisterChangeCheckBoxState extends SignUpStates {}