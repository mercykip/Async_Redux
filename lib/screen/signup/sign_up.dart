import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_async/screen/home.dart';
import 'package:registration_async/utils/colors.dart';
import 'package:registration_async/widgets/button_widget.dart';
import 'package:registration_async/widgets/header_container.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/signup';
  final String fullname;
  final String email;
  final String phonenumber;
  final String password;
  final VoidCallback onSave;
  SignUp(
      {Key key,
      this.fullname,
      this.email,
      this.phonenumber,
      this.password,
      this.onSave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Register"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                        hint: "Fullname",
                        icon: Icons.person,
                        key: Key("fullnameKey")),
                    _textInput(
                        hint: "Email", icon: Icons.email, key: Key("emailKey")),
                    _textInput(
                        hint: "Phone Number",
                        icon: Icons.call,
                        key: Key("phoneKey")),
                    _textInput(
                        hint: "Password",
                        icon: Icons.vpn_key,
                        key: Key("passwordKey")),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          key: Key("registerKey"),
                          btnText: "REGISTER",
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Already a member ? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Login",
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
