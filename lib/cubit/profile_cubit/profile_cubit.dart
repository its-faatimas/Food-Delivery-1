import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  bool _isPushTurned = true;
  bool _isSMSTurned = false;
  bool _isPromotionalTurned = true;

  void onPushSwitched(bool value) {
    _isPushTurned = !_isPushTurned;
    emit(ProfileInitial());
  }
  void onSMSSwitched(bool value) {
    _isSMSTurned = !_isSMSTurned;
    emit(ProfileInitial());
  }
  void onPromotionalSwitched(bool value) {
    _isPromotionalTurned = !_isPromotionalTurned;
    emit(ProfileInitial());
  }

  bool get isPushTurned => _isPushTurned;

  bool get isSMSTurned => _isSMSTurned;

  bool get isPromotionalTurned => _isPromotionalTurned;
}
