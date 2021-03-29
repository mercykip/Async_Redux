import 'package:flutter/material.dart';
import 'package:registration_async/screen/signup/sign_up.dart';
import 'package:registration_async/utils/colors.dart';
import 'package:registration_async/widgets/button_widget.dart';
import 'package:registration_async/widgets/header_container.dart';

class SignIn extends StatefulWidget {
  final int number;
  static const routeName = '/signin';

  const SignIn({Key key, this.number});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var email = '';
  var password = '';
  var error;
  TextEditingController emailController;
  TextEditingController passwordController;
  final _formkey = GlobalKey<FormState>();

  bool validate() {
    final isValid = _formkey.currentState.validate();

    if (isValid) {
      _formkey.currentState.save();
      FocusScope.of(context).unfocus();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Login"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        hint: "Email", icon: Icons.email, key: Key("emailKey")),
                    _textInput(
                        hint: "Password",
                        icon: Icons.vpn_key,
                        key: Key("passwordKey")),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          key: Key('loginKey'),
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          btnText: "LOGIN",
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account ? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Register",
                            style: TextStyle(color: orangeColors)),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon, key}) {
    return Container(
      key: key,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
