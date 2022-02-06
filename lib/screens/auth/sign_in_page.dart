import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/auth_cubit/sign_in_cubit/sign_in_cubit.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => SignInCubit(),
      child: BlocBuilder<SignInCubit, SignInState>(
        builder: (ctx, state) {
          SignInCubit cubit = ctx.watch();
          return Scaffold(
            appBar: SimpleAppBar(title: LocaleKeys.signIn.tr()),
            body: SingleChildScrollView(
              padding: MyEdgeInsets.symmetric(h: 20.0, v: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthHeader(
                    title: LocaleKeys.welcome,
                    subtitle: LocaleKeys.enterYourPhoneOrEmailForSignInOr,
                  ),
                  // Form
                  Form(
                    key: cubit.formKey,
                    child: Column(
                      children: [
                        // Email Field
                        MyTextFormField(
                          hint: LocaleKeys.email.tr(),
                          controller: cubit.emailController,
                          inputType: TextInputType.emailAddress,
                          validator: FormValidator.email,
                        ),

                        MySizedBox(height: 14.0),

                        // Password Field
                        MyTextFormField(
                          hint: LocaleKeys.password.tr(),
                          controller: cubit.passwordController,
                          inputType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.done,
                          validator: FormValidator.password,
                          obscureText: true,
                        ),
                        MySizedBox(height: 20.0),
                        Text(
                          LocaleKeys.forgetPassword.tr(),
                          style: MyTextStyle.regular(size: 12.0),
                        ),
                        MySizedBox(height: 20.0),

                        // Sign in button
                        PrimaryButton(
                          onPressed: cubit.onPressed,
                          label: LocaleKeys.signIn.tr(),
                        ),
                        MySizedBox(height: 20.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: MyTextStyle.regular(size: 12.0),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                LocaleKeys.createNewAccount.tr(),
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: MyEdgeInsets.symmetric(v: 24.0),
                          child: MyText(
                            LocaleKeys.or,
                            style: MyTextStyle.regular(size: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const AllSocialMediaButtons(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}