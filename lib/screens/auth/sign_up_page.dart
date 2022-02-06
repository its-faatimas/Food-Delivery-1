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
          return AuthBasePage(
              appBarTitle: LocaleKeys.signUp.tr(),
              pageTitle: LocaleKeys.createNewAccount,
              pageSubtitle: LocaleKeys.enterYourPhoneOrEmailForSignInOr,
              centerTitle: false,
              widgets: [
                Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      MyTextFormField(
                        inputType: TextInputType.name,
                        capitalization: TextCapitalization.words,
                        controller: cubit.fullNameController,
                        hint: LocaleKeys.name.tr(),
                        validator: FormValidator.general,
                      ),
                      MySizedBox(height: 14.0),
                      MyTextFormField(
                        controller: cubit.emailController,
                        hint: LocaleKeys.email.tr(),
                        validator: FormValidator.email,
                        inputType: TextInputType.emailAddress,
                      ),
                      MySizedBox(height: 14.0),
                      MyTextFormField(
                        controller: cubit.passwordController,
                        hint: LocaleKeys.password.tr(),
                        validator: FormValidator.password,
                        inputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                MySizedBox(height: 24.0),
                PrimaryButton(
                  onPressed: cubit.onPressed,
                  label: LocaleKeys.signUp.tr().toUpperCase(),
                ),
                MySizedBox(height: 24.0),
                const AllSocialMediaButtons(),
              ]);
        },
      ),
    );
  }
}
