import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:registration_async/redux/app/registration_state.dart';
import 'package:registration_async/redux/factory/factory.dart';
import 'package:registration_async/redux/model/view_model.dart';
import 'package:registration_async/screen/signup/sign_up.dart';

class RegistrationConnector extends StatelessWidget {
  RegistrationConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<RegistrationState, ViewModel>(
      vm: () => RegFactory(this),
      builder: (BuildContext context, ViewModel vm) => SignUp(
        fullname: vm.fullname,
        email: vm.email,
        phonenumber: vm.phonenumber,
        password: vm.password,
      ),
    );
  }
}
