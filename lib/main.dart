import 'package:async_redux/async_redux.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:registration_async/graphql/client.dart';
import 'package:registration_async/redux/app_state.dart';
import 'package:registration_async/routes/routes.dart';
import 'package:registration_async/screen/home.dart';
import 'package:registration_async/screen/signIn/sign_in.dart';
import 'package:registration_async/screen/signup/sign_up.dart';
import 'package:registration_async/screen/splash_page.dart';

Store<AppState> store;
AppState state = AppState.initialize();
final navigatorKey = GlobalKey<NavigatorState>();
GraphqlConfig graphqlConfig = GraphqlConfig();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NavigateAction.setNavigatorKey(navigatorKey);
  store = Store<AppState>(initialState: state);

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        /// connects the store to homepage
        home: SplashPage(),
        routes: {
          PageRoutes.home: (context) => Home(),
          PageRoutes.signin: (context) => SignIn(),
          PageRoutes.signup: (context) => SignUp(),
        },
      ));
}
