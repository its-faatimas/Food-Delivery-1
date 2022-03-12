import 'package:flutter/cupertino.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/home/home_body.dart';
import 'package:foodly/screens/orders/orders_page.dart';
import 'package:foodly/screens/profile/profile_page.dart';
import 'package:foodly/screens/search/search_page.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  int _currentIndex = 0;

  void onPageChanged(int i) {
    _currentIndex = i;
    emit(HomePageInitial());
  }

  int get currentIndex => _currentIndex;

  final List<Widget> _pages = [
    const HomeBody(),
    const SearchPage(),
    const OrdersPage(),
    const ProfilePage(),
  ];

  final List _appBars =[
    const AppBarWithDropDown(),
    SimpleAppBar(title: LocaleKeys.send_again.tr()),
    SimpleAppBar(title: LocaleKeys.orders.tr()),
    null,
    // SimpleAppBar(title: LocaleKeys.profileInformation.tr()),
  ];

  List<Widget> get pages => _pages;

  List get appBars => _appBars;
}
