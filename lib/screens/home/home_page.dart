import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final FocusNode _focusNode = FocusNode();
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Scaffold();
        },
      ),
    );
  }
}
