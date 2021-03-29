import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:registration_async/main.dart';
import 'package:registration_async/screen/signup/sign_up.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("sign in renders correctly", (WidgetTester tester) async {
    /// setup the finder
    /// signin fields
    final Finder emailField = find.byKey(Key('emailKey'));
    final Finder passwordField = find.byKey(Key('passwordKey'));
    final Finder btnLogin = find.byKey(Key('loginKey'));
    //signup fields
    final Finder fullnameField = find.byKey(Key('fullnameKey'));
    final Finder phoneField = find.byKey(Key('phoneKey'));
    final Finder btnRegister = find.byKey(Key('registerKey'));

    await tester.pumpWidget(MyApp());

    await tester.pumpAndSettle(Duration(seconds: 5));
    // await tester.pumpWidget(SignIn());
    //Repeatedly rebuilds the widget untill animation/duration is complete
    await tester.pumpAndSettle();

    await tester.tap(emailField);
    await tester.enterText(emailField, "mercyjemosop@gmail.com");

    await tester.tap(passwordField);
    await tester.enterText(passwordField, "Sabanet2@");

    expect(btnLogin, findsOneWidget);
    await tester.tap(btnLogin);
    await tester.pumpAndSettle(Duration(seconds: 2));

    ///sign Up
    expect(find.byType(SignUp), findsOneWidget);
    expect(fullnameField, findsOneWidget);
    await tester.pumpAndSettle(Duration(seconds: 5));
    await tester.tap(fullnameField);
    await tester.enterText(fullnameField, "mercyjemosop");
    await tester.tap(emailField);
    await tester.enterText(emailField, "mercyjemosop@gmail.com");
    await tester.tap(phoneField);
    await tester.enterText(phoneField, "096544433");
    await tester.tap(passwordField);
    await tester.enterText(passwordField, "Sabanet2@");
    await tester.pumpAndSettle(Duration(seconds: 10));
    await tester.tap(btnRegister);
  });
}
