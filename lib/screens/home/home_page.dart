
import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';
import 'package:foodly/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            //app bar qo'shildi
            appBar: const MyAppBar(title: 'MyAppBar'),
            body: Center(
              // Child'ga Padding berdik
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyTextFormField(
                  controller: TextEditingController(),
                  hint: 'Email',
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                print(LocaleKeys.hello.tr());
              },
            ),
          );
        },
      ),
    );
  }
}
