import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/app_screens.dart';
import 'package:foodly/cubit/profile_cubit/profile_cubit.dart';
import 'package:foodly/widgets/my_switch_tile.dart';
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
                  child: AuthHeader(
                    title: LocaleKeys.accountSettings,
                    subtitle: LocaleKeys.updateYourSettings,
                    centerTitle: false,
                  ),
                ),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: AccountSettings.settingsList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: _separated,
                  itemBuilder: (c, i) {
                    TableModel table = AccountSettings.settingsList[i];
                    return ProfileMenuTable(table: table);
                  },
                ),
                _setCategory(LocaleKeys.notifications),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: _separated,
                  itemBuilder: (c, i) {
                    return MySwitchTile(onChanged: (v) {});
                  },
                ),
                _setCategory(LocaleKeys.more),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) {
                      TableModel table = AccountSettings.moreList[i];
                      return ProfileMenuTable(table: table);
                    },
                    separatorBuilder: _separated,
                    itemCount: 3),
              ],
            ),
          );
        },
      ),
    );
  }

  _setCategory(String text) => Padding(
        padding: MyEdgeInsets.only(top: 28.0, left: 20.0, bottom: 12.0),
        child: Text(
          text.tr().toUpperCase(),
          style: MyTextStyle.semiBold(size: 16.0),
        ),
      );

  Widget _separated(c, i) => Divider(height: 1.0, indent: getWidth(60.0));
}
