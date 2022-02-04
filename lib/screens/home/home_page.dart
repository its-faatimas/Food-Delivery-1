import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(),
              ),
            ),
          );
        },
      ),
    );
  }
}
