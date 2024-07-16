import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/components/loading_widgets.dart';
import 'package:flutter_clean_code/config/components/round_button.dart';
import 'package:flutter_clean_code/config/route/routes_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
      body: Column(
        children: [
         // const LoadingWidget(size: 30,),
         const SizedBox(height: 20,),
          RoundButton(title:"Title",onPress: (){

          }),
           const SizedBox(height: 20,),
          CupertinoButton(
            color: Colors.blue,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                child: const Text('Login')),
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
