class Validation {
  String validateEmpty(String val) {
    if (val.isEmpty) {
      return "the value cannot be empty";
    } else {
      return null;
    }
  }

  static String validateEmail(String val) {
    if (val.isNotEmpty) {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(val);
      return emailValid ? null : "please enter a valid email address";
    } else {
      return "email cannot be left empty";
    }
  }

  static String validatePassword(String val) {
    if (val.isNotEmpty) {
      String pattern =
          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
      bool passVerified = new RegExp(pattern).hasMatch(val);
      return passVerified ? null : "please enter a correct password";
    } else {
      return "passwords cannot be left empty";
    }
  }
}
