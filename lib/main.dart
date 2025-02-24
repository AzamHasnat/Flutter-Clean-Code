import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/routes/routes.dart';
import 'package:flutter_clean_code/config/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clean Code',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: RoutesName.paintScreen,
     onGenerateRoute: Routes.generateRoute,   
    );
  }
}