import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';
import 'package:foodly/widgets/buttons/social_media_button.dart';
import 'package:foodly/widgets/my_app_bar.dart';

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
                child: MyOutlinedButton(
                  onPressed: () {},
                  label: "Connect with Facebook".toUpperCase(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
