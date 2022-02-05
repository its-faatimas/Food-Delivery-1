import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onPressed() {
    if(_formKey.currentState!.validate()) {

    }
  }

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;
}
