import 'dart:async';
import 'dart:developer';

import 'package:async_redux/async_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:registration_async/redux/app/registration_state.dart';

class RegistrationAction extends ReduxAction<RegistrationState> {
  final String email;

  final String password;

  User user = FirebaseAuth.instance.currentUser;

  RegistrationAction(this.email, this.password);
  @override
  RegistrationState reduce() {
    return state.copy(saveUser());
  }

  // ignore: missing_return
  Future<String> saveUser() async {
    try {
      print("Email   " + email.toString().trim());
      print("Password     " + password.toString().trim());
      UserCredential authResult = (await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.toString().trim(),
              password: password.toString().trim()));
      log("Results..................." + authResult.toString());
      User user = authResult.user;
      if (user == null) {
        print("user registered successfully");
      } else {
        print("error!!!!!!!!!!!!!!!!!!!!");
      }
    } catch (e) {
      print("Not  Function working");
      print(e);
    }
  }
}
