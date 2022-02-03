import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=> HomePageCubit(),
    child: BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
      return Scaffold(
        body: Center(

          child: Wrap(
            children: [
              _buildMySizedBox(),
              _buildMySizedBox(),
              _buildMySizedBox(),
              _buildMySizedBox(),
            ],
          ),
        ),
      );
    },),
    );
  }

  MySizedBox _buildMySizedBox() {
    return MySizedBox(
              width: 65.0,
              child: TextField(
                textInputAction: TextInputAction.next,
                onChanged: (v) {

                },
                maxLength: 1,
                textAlign: TextAlign.center,
                autofocus: true,
                keyboardType: TextInputType.number,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
              ),
            );
  }
}
