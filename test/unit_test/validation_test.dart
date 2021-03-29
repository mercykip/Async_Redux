import 'package:flutter_test/flutter_test.dart';
import 'package:registration_async/validation/validation.dart';

void main() {
  ///Validate email
  test('test email empty field, return error', () {
    String result = Validation.validateEmail("");
    expect(result, "email cannot be left empty");
  });

  test('test field not empty,return null', () {
    String result = Validation.validateEmail("asd@gmail");
    expect(result, "please enter a valid email address");
  });

  test('test user input email correctly', () {
    String result = Validation.validateEmail('mercyjemosop@gmail.com');
    expect(result, null);
  });

  /// validate password

  test("test user entering password correctly returns null", () {
    String result = Validation.validatePassword("Pass@123");
    expect(result, null);
  });

  test("test user entering password incorrectly returns error", () {
    String result = Validation.validatePassword("asdds");
    expect(result, "please enter a correct password");
  });

  test("test user not entering password returns error", () {
    String result = Validation.validatePassword("");
    expect(result, "passwords cannot be left empty");
  });
}
