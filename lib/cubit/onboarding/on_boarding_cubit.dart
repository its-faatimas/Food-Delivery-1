import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  int _currentIndex = 0;
  final PageController _pageController = PageController();


  void onChanged(int index) {
    _currentIndex = index;
    emit(OnBoardingInitial());
  }

  int get currentIndex => _currentIndex;

  PageController get pageController => _pageController;
}
