import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onPressed() {
    if (_formKey.currentState!.validate()) {}
  }

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;

  TextEditingController get fullNameController => _fullNameController;
}
