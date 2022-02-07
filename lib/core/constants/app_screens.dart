import 'package:foodly/core/components/exporting_packages.dart';

class ProfileSettings {
  static final List<TableModel> _settingsList = [
    TableModel(
      AppIcons.profile,
      LocaleKeys.profileInformation.tr(),
      LocaleKeys.change_your_acconut_info.tr(),
      const HomePage(),
    ),
    TableModel(
      AppIcons.lock,
      LocaleKeys.change_password.tr(),
      LocaleKeys.change_your_password.tr(),
      const HomePage(),
    ),
    TableModel(
      AppIcons.card,
      LocaleKeys.payment_methods.tr(),
      LocaleKeys.add_your_credit.tr(),
      const HomePage(),
    ),
    TableModel(
      AppIcons.location,
      LocaleKeys.locations.tr(),
      LocaleKeys.add_or_remove_your_location.tr(),
      const HomePage(),
    ),
    TableModel(
      AppIcons.facebook,
      LocaleKeys.add_social.tr(),
      LocaleKeys.add_fb_tw.tr(),
      const HomePage(),
    ),
    TableModel(
      AppIcons.share,
      LocaleKeys.refer_to.tr(),
      LocaleKeys.get_money_for_ref.tr(args: ['10']),
      const HomePage(),
    ),
  ];

  static List<TableModel> get settingsList => _settingsList;
}
