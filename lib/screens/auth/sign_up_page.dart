import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/auth_cubit/sign_up_cubit/sign_up_cubit.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (ctx, state) {
          SignUpCubit cubit = ctx.watch();
          return Scaffold(
            appBar: SimpleAppBar(title: LocaleKeys.signUp.tr()),
            
          );
        },
      ),
    );
  }
}

