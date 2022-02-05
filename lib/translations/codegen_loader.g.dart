// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> uz_UZ = {
    "hello": "Salom",
    "appName": "Taom",
    "get_started": "Boshlash",
    "welcome": "Xush kelibsiz",
    "password": "Parol",
    "email": "Email",
    "sign_in": "Kirish",
    "sign_up": "Ro`yxatdan o`tish",
    "name": "Ism",
    "forget_password": "Parolni unutdingizmi?",
    "or": "Yoki",
    "enter_your_phone_or_email_for_sign_in_or":
        "Kirish uchun telefon raqamingizni yoki emailingizni kiriting. Yoki",
    "create_new_account": "Yangi Hisob ochish.",
    "connect_with": "{} orqali ulanish",
    "forgot_password": "Parolni unutdi",
    "enter_email_to_reset":
        "Email manzilingizni kiriting, biz sizga qayta o`rnatish instruksiyasini yuboramiz.",
    "email_address": "Email Manzil",
    "reset_password": "Parolni tiklash",
    "send_again": "Qayta yuborish"
  };
  static const Map<String, dynamic> en_US = {
    "hello": "Hello",
    "appName": "Foodly",
    "get_started": "Get Started",
    "welcome": "Welcome",
    "password": "Password",
    "email": "Email",
    "sign_in": "Sign In",
    "sign_up": "Sign Up",
    "name": "Name",
    "forget_password": "Forget Password?",
    "or": "Or",
    "enter_your_phone_or_email_for_sign_in_or":
        "Enter your Phone number or Email for sign in. Or",
    "create_new_account": "Create new account.",
    "connect_with": "Connect with {}",
    "forgot_password": "Forgot password",
    "enter_email_to_reset":
        "Enter your email address and we will send you a reset instructions.",
    "email_address": "Email Address",
    "reset_password": "Reset Password",
    "send_again": "Send again"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "uz_UZ": uz_UZ,
    "en_US": en_US
  };
}
