import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_async/widgets/header_container.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  static const routeName = '/signup';
  //final String fullname;
  final String email;
  //final String phonenumber;
  final String password;
  final VoidCallback saveUser;
  SignUp(
      {Key key,
      // this.fullname,
      this.email,
      // this.phonenumber,
      this.password,
      this.saveUser})
      : super(key: key);
  // Future saveUsers({String email, String password}) async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(
  //             email: "barry.allen@example.com",
  //             password: "SuperSecretPassword!");
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  // FirebaseAuth auth = FirebaseAuth.instance;

  // TextEditingController email = new TextEditingController();
  // TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(bottom: 30),
            child: Column(children: <Widget>[
              HeaderContainer("Register"),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child:
                      Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    // _textInput(
                    //     hint: "Fullname",
                    //     icon: Icons.person,
                    //     key: Key("fullnameKey")),
                    _textInput(
                        hint: "Email",
                        icon: Icons.email,
                        key: Key("emailKey"),
                        controller: email),
                    // _textInput(
                    //     hint: "Phone Number",
                    //     icon: Icons.call,
                    //     key: Key("phoneKey")),
                    _textInput(
                        hint: "Password",
                        icon: Icons.vpn_key,
                        controller: password,
                        key: Key("passwordKey")),
                    // Expanded(
                    //   child: Center(
                    //     child: ButtonWidget(
                    //       onPressed: saveUser,
                    //       key: Key("registerKey"),
                    //       btnText: "REGISTER",
                    //     ),
                    //   ),
                    // ),
                    //
                    // ignore: missing_required_param

                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: Colors.orangeAccent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () => {saveUser()},
                      padding: EdgeInsets.all(12.0),
                      child: Text('SignUp'),
                      textColor: Colors.white,
                    )
                  ]),
                ),
              ),
            ])));
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
      child: TextField(
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
