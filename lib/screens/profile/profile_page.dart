import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/app_screens.dart';
import 'package:foodly/cubit/profile_cubit/profile_cubit.dart';
import 'package:foodly/widgets/tiles/my_switch_tile.dart';
import 'package:foodly/widgets/tiles/profile_menu_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (ctx, state) {
          ProfileCubit cubit = ctx.watch();
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header. Title and subtitle
                _header(),

                // Navigator tiles
                _navigators(),

                // Notifications text
                _setCategory(LocaleKeys.notifications.tr()),

                // Notification Switches
                _showNotificationSwitches(cubit),

                // More text
                _setCategory(LocaleKeys.more.tr()),

                // More Navigator Tiles
                _moreTiles(),
              ],
            ),
          );
        },
      ),
    );
  }

  Padding _header() => Padding(
        padding: MyEdgeInsets.only(
          left: 20.0,
          top: 68.0,
          right: 50,
          bottom: 24.0,
        ),
        child: TitleSubtitle(
          title: LocaleKeys.accountSettings.tr(),
          subtitle: LocaleKeys.updateYourSettings,
          centerTitle: false,
        ),
      );

  ListView _moreTiles() {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, i) {
          TableModel table = AccountSettings.moreList[i];
          return ProfileMenuTile(table: table);
        },
        separatorBuilder: _separated,
        itemCount: 3);
  }

  ListView _navigators() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: AccountSettings.settingsList.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: _separated,
      itemBuilder: (c, i) {
        TableModel table = AccountSettings.settingsList[i];
        return ProfileMenuTile(table: table);
      },
    );
  }

  Column _showNotificationSwitches(ProfileCubit cubit) => Column(
        children: [
          MySwitchTile(
            onChanged: cubit.onPushSwitched,
            title: LocaleKeys.pushNotifications.tr(),
            isSwitched: cubit.isPushTurned,
          ),
          _divider(),
          MySwitchTile(
            onChanged: cubit.onSMSSwitched,
            title: LocaleKeys.sms_notifications.tr(),
            isSwitched: cubit.isSMSTurned,
          ),
          _divider(),
          MySwitchTile(
            onChanged: cubit.onPromotionalSwitched,
            title: LocaleKeys.promotionalNotifications.tr(),
            isSwitched: cubit.isPromotionalTurned,
          ),
        ],
      );

  Padding _setCategory(String text) => Padding(
        padding: MyEdgeInsets.only(top: 28.0, left: 20.0, bottom: 12.0),
        child: Text(
          text.toUpperCase(),
          style: MyTextStyle.semiBold(size: 16.0),
        ),
      );

  Widget _separated(c, i) => _divider();

  Divider _divider() => Divider(height: 1.h, indent: 60.w);
}
