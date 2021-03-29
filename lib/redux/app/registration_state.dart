class RegistrationState {
  final String fullname;
  final String email;
  final String phonenumber;
  final String password;

  /// constructor
  RegistrationState(
      {this.fullname, this.email, this.phonenumber, this.password});

  /// Create a new state by substituting properties of the previous  one
  RegistrationState copy(
    saveUser, {
    //   String fullnameState,
    String emailState,
    // String phonenumberState,
    String passwordState,
  }) {
    return RegistrationState(
        // fullname: fullnameState ?? fullname,
        email: emailState ?? email,
        //phonenumber: phonenumberState ?? phonenumber,
        password: passwordState ?? password);
  }

  static RegistrationState initialState() => RegistrationState(
        // fullname: null,
        email: null,
        //  phonenumber: null,
        password: null,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistrationState &&
          runtimeType == other.runtimeType &&
          fullname == other.fullname &&
          email == other.email &&
          phonenumber == other.phonenumber &&
          password == other.password;
  @override
  int get hashCode =>
      fullname.hashCode ^
      email.hashCode ^
      phonenumber.hashCode ^
      password.hashCode;
}
