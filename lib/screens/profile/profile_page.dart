import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/app_screens.dart';
import 'package:foodly/cubit/profile_cubit/profile_cubit.dart';
import 'package:foodly/widgets/profile_menu_table.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (ctx, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: MyEdgeInsets.only(
                    left: 20.0,
                    top: 68.0,
                    right: 50,
                    bottom: 24.0,
                  ),
                  child: const AuthHeader(
                    title: LocaleKeys.accountSettings,
                    subtitle: LocaleKeys.updateYourSettings,
                    centerTitle: false,
                  ),
                ),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: ProfileSettings.settingsList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (c, i) {
                    TableModel table = ProfileSettings.settingsList[i];
                    return ProfileMenuTable(table: table);
                  },
                  separatorBuilder: (c, i) {
                    return Divider(
                      height: 1.0,
                      indent: getWidth(60.0),
                    );
                  },
                ),
                Text(
                  LocaleKeys.notifications.tr().toUpperCase(),
                  style: MyTextStyle.semiBold(size: 16.0),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
