import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/routes/routes_name.dart';
import 'package:flutter_clean_code/views/test_paint.dart';

import '../../views/view.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings) { 
      
   switch(settings.name){
    case RoutesName.splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case RoutesName.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case RoutesName.homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case RoutesName.paintScreen:
      return MaterialPageRoute(builder: (context) => MyCustomWidget());
     default:
      return MaterialPageRoute(builder: (context) {
         return const Scaffold(
          body: Center(
            child: Text("No Route Generated"),
          ),
         );
      });  
   }
  }
}
