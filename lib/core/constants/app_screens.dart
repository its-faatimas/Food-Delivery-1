import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/settings/adding_social_account_page.dart';
import 'package:foodly/screens/settings/locations_page.dart';
import 'package:foodly/screens/payment/payment_methods_page.dart';
import 'package:foodly/screens/settings/profile_settings_page.dart';
import 'package:foodly/screens/settings/refer_page.dart';

class AccountSettings {
  static final List<TableModel> _settingsList = [
    TableModel(
      AppIcons.profile,
      LocaleKeys.profileInformation.tr(),
      LocaleKeys.change_your_acconut_info.tr(),
      const ProfileSettingsPage(),
    ),
    TableModel(
      AppIcons.lock,
      LocaleKeys.change_password.tr(),
      LocaleKeys.change_your_password.tr(),
      const ProfileSettingsPage(),
    ),
    TableModel(
      AppIcons.card,
      LocaleKeys.payment_methods.tr(),
      LocaleKeys.add_your_credit.tr(),
      const PaymentMethodsPage(),
    ),
    TableModel(
      AppIcons.location,
      LocaleKeys.locations.tr(),
      LocaleKeys.add_or_remove_your_location.tr(),
      const LocationsPage(),
    ),
    TableModel(
      AppIcons.facebook,
      LocaleKeys.add_social.tr(),
      LocaleKeys.add_fb_tw.tr(),
      const AddingSocialAccountPage(),
    ),
    TableModel(
      AppIcons.share,
      LocaleKeys.refer_to.tr(),
      LocaleKeys.get_money_for_ref.tr(args: ['10']),
      const ReferPage(),
    ),
  ];

  static List<TableModel> get settingsList => _settingsList;
}
