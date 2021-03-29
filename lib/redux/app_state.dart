import 'package:registration_async/redux/app/registration_state.dart';

class AppState {
  final RegistrationState registrationState;

  AppState({this.registrationState});

  AppState copy({String registration}) {
    return AppState(registrationState: registration ?? registrationState);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          registrationState == other.registrationState;

  @override
  int get hashCode => registrationState.hashCode;
}
