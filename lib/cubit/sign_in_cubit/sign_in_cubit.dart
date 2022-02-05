import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormFieldState> get formKey => _formKey;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;
}
