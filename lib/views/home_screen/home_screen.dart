import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/routes/routes_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Text("Home Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        ),
        body: Center(
          
          child: CupertinoButton(
             color: Colors.orange.shade400,
              child: Container(
                decoration: BoxDecoration(
              color: Colors.orange.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Back To Login"),
          ), onPressed: (){
            Navigator.pushNamed(context, RoutesName.loginScreen);
          })),
    );
  }
}
