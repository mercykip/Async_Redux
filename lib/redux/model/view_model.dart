import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';

/// extending Vm allows us to implement equals/hashnode
///
class ViewModel extends Vm {
  final String fullname;
  final String email;
  final String phonenumber;
  final String password;
  final VoidCallback onSave;
  ViewModel(
      {this.fullname, this.email, this.phonenumber, this.password, this.onSave})
      : super(equals: [fullname, email, phonenumber, password]);
}
