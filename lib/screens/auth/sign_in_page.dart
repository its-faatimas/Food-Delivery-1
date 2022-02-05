import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/sign_in_cubit/sign_in_cubit.dart';
import 'package:foodly/widgets/buttons/social_media_button.dart';

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
            appBar: SimpleAppBar(title: LocaleKeys.signUp.tr()),
            body: SingleChildScrollView(
              padding: MyEdgeInsets.symmetric(h: 20.0, v: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    LocaleKeys.welcome.tr(),
                    style: MyTextStyle.semiBold(size: 34.0),
                  ),
                  MySizedBox(height: 20.0),
                  MyText(
                    LocaleKeys.enterEmailToReset.tr(),
                    style: MyTextStyle.regular(color: AppColors.darkGrey),
                  ),
                  MySizedBox(height: 34.0),
                  Form(
                    key: cubit.formKey,
                    child: Column(
                      children: [
                        MyTextFormField(
                          hint: LocaleKeys.email.tr(),
                          controller: cubit.emailController,
                          inputType: TextInputType.emailAddress,
                        ),
                        MySizedBox(height: 14.0),
                        MyTextFormField(
                          hint: LocaleKeys.password.tr(),
                          controller: cubit.passwordController,
                          inputType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.done,
                          obscureText: true,
                        ),
                        MySizedBox(height: 20.0),
                        MyText(
                          LocaleKeys.forgetPassword.tr(),
                          style: MyTextStyle.regular(size: 12.0),
                        ),
                        MySizedBox(height: 20.0),
                        PrimaryButton(
                          onPressed: () {},
                          label: LocaleKeys.signIn.tr(),
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
                  SocialMediaButton(
                    onPressed: () {},
                    assetIcon: AppIcons.facebookRect,
                    label: LocaleKeys.connectWith
                        .tr(args: ['facebook']).toUpperCase(),
                  ),
                  MySizedBox(height: 16.0),
                  SocialMediaButton(
                    color: AppColors.blue,
                    onPressed: () {},
                    assetIcon: AppIcons.googleRect,
                    label: LocaleKeys.connectWith
                        .tr(args: ['google']).toUpperCase(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
