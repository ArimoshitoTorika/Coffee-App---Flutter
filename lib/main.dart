import 'package:coffee_app/loginScreen.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splash());
  }
}

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    _NavToHomePage();
  }
  void _NavToHomePage(){
    Future.delayed(const Duration(seconds: 3),(){
      if(mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5E6D3),
        child: Center(
          child: ClipRRect(borderRadius: BorderRadius.circular(80),child: Image.asset('assets/images/bean_brew.png',width: 160,)),
        ),
      ),
    );
  }
}

