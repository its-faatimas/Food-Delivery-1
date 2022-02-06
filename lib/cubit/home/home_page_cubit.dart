import 'package:bloc/bloc.dart';
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
}
