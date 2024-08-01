import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/route/route_name.dart';

import '../../views/view.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SafeArea(
          child: Center(
            child: Text("No Route Found")
            )));  
    }
  }
}
