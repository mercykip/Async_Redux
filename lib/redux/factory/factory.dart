import 'package:async_redux/async_redux.dart';
import 'package:registration_async/redux/action/registration_action.dart';
import 'package:registration_async/redux/app/registration_state.dart';
import 'package:registration_async/redux/connector/registration_connector.dart';
import 'package:registration_async/redux/model/view_model.dart';

class RegFactory extends VmFactory<RegistrationState, RegistrationConnector> {
  RegFactory(widget) : super(widget);

  String get password => null;

  String get email => null;

  @override
  ViewModel fromStore() => ViewModel(
        // fullname: state.fullname,
        email: state.email,
        // phonenumber: state.phonenumber,
        password: state.password,
        saveUser: () => dispatch(RegistrationAction(email, password)),
      );
}
