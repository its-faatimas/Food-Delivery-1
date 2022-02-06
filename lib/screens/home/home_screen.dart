import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            //app bar qo'shildi
            appBar: const SimpleAppBar(title: 'MyAppBar'),
            body: Center(
              // Child'ga Padding berdik
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.emailAddress.tr()),
                    Text(LocaleKeys.appName.tr()),
                    Text(LocaleKeys.enterEmailToReset.tr()),
                    Text(LocaleKeys.sendAgain.tr()),
                    Text(LocaleKeys.password.tr()),
                    Text(LocaleKeys.createNewAccount.tr()),
                    Text(LocaleKeys.connectWith
                        .tr(args: ['google'])
                        .toUpperCase())
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                String locale = context.locale.languageCode;
                await context.setLocale(locale == 'en'
                    ? const Locale('uz', 'UZ')
                    : const Locale('en', 'US'));
              },
            ),
          );
        },
      ),
    );
  }
}
