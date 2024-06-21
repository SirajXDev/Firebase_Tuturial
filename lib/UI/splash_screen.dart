import 'package:firebase_tasks/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 

class _SplashScreenState extends State<SplashScreen> {

SplashServices splashScreen=SplashServices();
  @override
  void initState(){
    super.initState();
  splashScreen.isLogin(context);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('spalsh screen'),
      backgroundColor: Colors.blue,
      centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(child: Text('Firebase Tuturial',style: TextStyle(fontSize: 25),)
        ),
      ],),
    );
  }
}