# Run Unit/Widget Testing
http://simp.ly/p/34Cb6S
flutter test --coverage test&& lcov --remove coverage/lcov.info 'lib/*.g.dart' -o coverage/lcov.info && genhtml coverage/lcov.info --output=coverage && google-chrome coverage/index.html 
flutter test --coverage test/widgets_tests/supporting_documents_page_test.dart&& lcov --remove coverage/lcov.info 'lib/*.g.dart' -o coverage/lcov.info && genhtml coverage/lcov.info --output=coverage && google-chrome coverage/index.html 
# Test all widgets coverage
flutter test --coverage test/widgets_tests && genhtml -o coverage coverage/lcov.info && firefox coverage/index.html
# test a single widget
 flutter run test/widgets_tests/presentation/onboarding/profile/user_profile_test.dart
# Run Intergration Testing
http://simp.ly/p/34Cb6S
flutter drive \--driver=/home/jemo/savannah/flutter/registration_async/test_driver/intergration_test.dart \--target=/home/jemo/savannah/flutter/registration_async/intergration_test/login_test.dart

# Async Redux
# Main.dart
AsyncRedux comes with a NavigateAction which you can dispatch to navigate your Flutter app. For this to work, during app initialization you must create a navigator key and then inject it into the action:
 
# usage
final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  NavigateAction.setNavigatorKey(navigatorKey);
  ...
}

You must also use this same navigator key in your MaterialApp:
# usage
return StoreProvider<AppState>(
  store: store,
  child: MaterialApp(
	  ...
	  navigatorKey: navigatorKey,
	  initialRoute: '/',
	  onGenerateRoute: ...
	  ),
);
use the action as needed:
// Most Navigator methods are available. 
// For example pushNamed: 

dispatch(NavigateAction.pushNamed("myRoute"));
# N.B Don't ever save the current route in the store
If you need to know the route you're in, you may use this static method provided by NavigateAction:
String routeName = NavigateAction.getCurrentNavigatorRouteName(context);

# test navigation by asserting navigation types, route names etc

var navigateAction = actions.get(NavigateAction).action as NavigateAction;
expect(navigateAction.type, NavigateType.pushNamed);
expect((navigateAction.details as NavigatorDetails_PushNamed).routeName, "myRoute");

# SSH key generation and management resources
http://simp.ly/p/8QrzZ3

# CONNECT FIREBASE TO FLUTTER
Connecting
https://www.youtube.com/watch?v=Wa0rdbb53I8
Authenticating
https://www.youtube.com/watch?v=oJ5Vrya3wCQ

# Graphql 
IDE
https://lucasconstantino.github.io/graphiql-online/
https://medium.com/@v.ditsyak/ultimate-toolchain-to-work-with-graphql-in-flutter-13aef79c6484	
introduction
https://graphql.org/learn/
https://www.howtographql.com/basics/0-introduction/
Resources
https://joshuamdeguzman.com/integrating-graphql-in-flutter-using-graphql_flutter/
https://joshuamdeguzman.com/integrating-graphql-in-flutter-using-graphql_flutter/
https://morioh.com/p/c905f39b3282

# Generate Sha1
https://flutteragency.com/how-to-generate-sha-1-in-flutter/
# Enable and disable firewall
https://askubuntu.com/questions/250775/how-do-i-turn-off-the-firewall-in-ubuntu-12-04

#  Permission denied while connecting with docker
https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue

# install oracle jdk
https://www.youtube.com/watch?v=ogWKP9Lm-Qo