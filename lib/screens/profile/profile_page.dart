import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/profile_cubit/profile_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (ctx, state) {
          return Container();
        },
      ),
    );
  }
}
