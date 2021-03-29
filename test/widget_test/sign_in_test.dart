import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:registration_async/screen/signIn/sign_in.dart';
import 'package:registration_async/screen/signup/sign_up.dart';
import 'package:registration_async/widgets/button_widget.dart';

void main() {
  testWidgets('sign in renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: SignIn(),
    )));

    /// Find a specific text if it exists in a class
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    /// find a widget by refrencing there key
    expect(find.byKey(Key('passwordKey')), findsOneWidget);
    expect(find.byKey(Key('emailKey')), findsOneWidget);

    /// search widgets of a particular type
    Finder widget = find.byType(Expanded);
    expect(widget, findsWidgets);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(Container), findsWidgets);

    ///Enter text into a textfield(email Text field)
    await tester.enterText(find.byKey(Key('emailKey')), "myemail");
    expect(find.text("myemail"), findsOneWidget);

    ///Enter text into a textfield(password Text field)
    await tester.enterText(find.byKey(Key('passwordKey')), "mypassword");
    expect(find.text("mypassword"), findsOneWidget);

    ///find an image
    expect(find.byType(Image), findsOneWidget);

    ///Test image widget source path

    ///Tap the SignIn(Login) Button
    await tester.tap(find.byType(ButtonWidget));

    ///Rebuild widget after state has changed
    await tester.pump();
  });
  testWidgets('sign up renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: SignUp(),
    )));

    /// Find a specific text if it exists in a class

    expect(find.text('Register'), findsWidgets);
    //  expect(find.text('Password'), findsOneWidget);

    // /// find a widget by refrencing there key
    // expect(find.byKey(Key('passwordKey')), findsOneWidget);
    // expect(find.byKey(Key('emailKey')), findsOneWidget);

    // /// search widgets of a particular type
    // Finder widget = find.byType(Expanded);
    // expect(widget, findsWidgets);
    // expect(find.byType(TextFormField), findsNWidgets(2));
    // expect(find.byType(Container), findsWidgets);

    // ///Enter text into a textfield(email Text field)
    // await tester.enterText(find.byKey(Key('emailKey')), "myemail");
    // expect(find.text("myemail"), findsOneWidget);

    // ///Enter text into a textfield(password Text field)
    // await tester.enterText(find.byKey(Key('passwordKey')), "mypassword");
    // expect(find.text("mypassword"), findsOneWidget);

    // ///find an image
    // expect(find.byType(Image), findsOneWidget);

    // ///Test image widget source path

    // ///Tap the SignIn(Login) Button
    // await tester.tap(find.byType(ButtonWidget));

    // ///Rebuild widget after state has changed
    // await tester.pump();
  });
}
