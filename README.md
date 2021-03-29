# Run Unit/Widget Testing
http://simp.ly/p/34Cb6S
flutter test --coverage test&& lcov --remove coverage/lcov.info 'lib/*.g.dart' -o coverage/lcov.info && genhtml coverage/lcov.info --output=coverage && google-chrome coverage/index.html 

# Run Intergration Testing
http://simp.ly/p/34Cb6S
flutter drive \--driver=/home/jemo/savannah/flutter/registration_async/test_driver/intergration_test.dart \--target=/home/jemo/savannah/flutter/registration_async/intergration_test/login_test.dart

# Async Redux


