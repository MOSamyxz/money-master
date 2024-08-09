import 'package:flutter/material.dart';
import 'package:money_master/presentation/auth/login/view/login_screen.dart';
import 'package:money_master/presentation/on_boarding/view/on_boarding_screen.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String signIn = '/signin';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      //  home: (context) => HomeScreen(),
      onboarding: (context) => const OnBoardingScreen(),
      signIn: (context) => const LogInScreen(),
    };
  }
}
