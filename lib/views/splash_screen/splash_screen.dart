import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/components/internet_exception_widget.dart';
import 'package:flutter_clean_code/config/components/loading_widgets.dart';
import 'package:flutter_clean_code/config/components/round_button.dart';
import 'package:flutter_clean_code/config/routes/routes_name.dart';
import 'package:flutter_clean_code/data/exception/app_exception.dart';
import 'package:flutter_clean_code/services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices _splashServices = SplashServices();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    _splashServices.isLogin(context);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'SplashScreen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          throw NoInternetException('');
        }), */
      body:  Center(
        child: Text("Splash Screen",style: TextStyle(fontSize: 50),)
      ),
    );
  }
}
