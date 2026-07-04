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

  void initState() {
    super.initState();
    _NavLogin();
  }

  void _NavLogin() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                Loginscreen(),transitionsBuilder: (context,animation,secondaryAnimation,child){
              return SlideTransition(position: Tween<Offset>(
                begin: const Offset(0.0, 1.0), // starts off-screen bottom
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
                child: child,);
          },transitionDuration: const Duration(milliseconds: 500)
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFF8F5),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.asset('assets/images/bean_brew.png', width: 160),
          ),
        ),
      ),
    );
  }
}
