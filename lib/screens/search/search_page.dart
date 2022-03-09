import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/search_cubit/search_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (ctx, state) {
          return Container();
        },
      ),
    );
  }
}
