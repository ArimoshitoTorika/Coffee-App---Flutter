import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/loginField.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  void test() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Container(
            color: Color(0xFFFFF8F5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 140),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEFE7E2).withAlpha(100),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/bean_brew.png',
                        width: 100,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Color(0xFF6F4E37),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Sign in to continue your coffee journey.",
                    style: TextStyle(color: Color(0xFF534943)),
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFFEFEFF),
                      border: Border.all(color: Color(0xFFEFE7E2), width: 2),
                    ),
                    width: 380,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 320,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Email Address"),
                                ),
                                SizedBox(height: 5),
                                Loginfield(
                                  hintText: 'you@example.com',
                                  fieldIcon: Icons.mail_outline,
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 350,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                          color: MyColorLib.primary,
                                        ),
                                      ),

                                      // SizedBox(width: 115),
                                      Align(
                                        child: TextButton(
                                          onPressed: test,
                                          child: Text(
                                            "Forgot password?",
                                            style: TextStyle(
                                              color: MyColorLib.primary,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 5),
                                Loginfield(
                                  hintText: '••••••••',
                                  fieldIcon: Icons.lock_outline,
                                ),
                                SizedBox(height: 30),
                                SizedBox(
                                  width: 350,
                                  child: ElevatedButton(
                                    onPressed: test,
                                    child: Text("Sign In"),
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
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 350,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: MyColorLib.secondary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: Text("Or continue with"),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: MyColorLib.secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
