import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodly/screens/home/home_body.dart';
import 'package:foodly/screens/orders/orders_page.dart';
import 'package:foodly/screens/profile/profile_page.dart';
import 'package:foodly/screens/search/search_page.dart';
import 'package:meta/meta.dart';

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

  List<Widget> get pages => _pages;
}
