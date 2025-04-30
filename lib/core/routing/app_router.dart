import 'package:flutter/material.dart';
import 'package:medical_app/core/routing/routes.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/on_boarding/on_boarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(
              body: Center(
                child: Text('No Route Defined for ${settings.name}'),
              ),
            ));
    }
  }
}