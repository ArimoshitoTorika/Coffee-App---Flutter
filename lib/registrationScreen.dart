import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/appLogo.dart';
import 'package:coffee_app/Widgets/loginField.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: MyColorLib.secondary,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: MyColorLib.bgColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 50),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Applogo(logoWidth: 80, borderWidth: 3),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Join Bean & Brew",
                            style: TextStyle(
                              color: MyColorLib.primary,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 280,
                            child: Center(
                              child: Text(
                                "Create your account to start your coffee journey.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: MyColorLib.primary,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 1,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Full Name",
                                  style: TextStyle(color: MyColorLib.primary),
                                ),
                              ),
                              SizedBox(height: 5),
                              Loginfield(
                                hintText: 'Your Name',
                                fieldIcon: Icons.person_outline,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 1,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Email Address",
                                  style: TextStyle(color: MyColorLib.primary),
                                ),
                              ),
                              SizedBox(height: 5),
                              Loginfield(
                                hintText: 'you@example.com',
                                fieldIcon: Icons.mail_outline,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 1,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Phone Number",
                                  style: TextStyle(color: MyColorLib.primary),
                                ),
                              ),
                              SizedBox(height: 5),
                              Loginfield(
                                hintText: '0XX-XXX-XXX-XXX',
                                fieldIcon: Icons.phone_outlined,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 1,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Password",
                                  style: TextStyle(color: MyColorLib.primary),
                                ),
                              ),
                              SizedBox(height: 5),
                              Loginfield(
                                hintText: '••••••••',
                                fieldIcon: Icons.lock_outline,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 1,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Confirm Password",
                                  style: TextStyle(color: MyColorLib.primary),
                                ),
                              ),
                              SizedBox(height: 5),
                              Loginfield(
                                hintText: '••••••••',
                                fieldIcon: Icons.lock_outline,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: SizedBox(
                      width: 350,
                      child: ElevatedButton(
                        onPressed: test,
                        child: Text("Register"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColorLib.primary,
                          foregroundColor: MyColorLib.secondary,
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  VoidCallback? test() {}
}
