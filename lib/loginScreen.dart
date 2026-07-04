import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/appLogo.dart';
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
            color: MyColorLib.bgColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 120),
                Align(
                  alignment: Alignment.topCenter,
                  child: Applogo(logoWidth: 100, borderWidth: 5),
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
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Email Address",style: TextStyle(color: MyColorLib.primary),),
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
                                SizedBox(height: 20),
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
                                          thickness: 2,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: Text(
                                          "Or continue with",
                                          style: TextStyle(
                                            color: MyColorLib.primary,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: MyColorLib.secondary,
                                          thickness: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 350,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: test,
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFFEFEFF),
                                            foregroundColor: MyColorLib.primary,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              side: BorderSide(
                                                color: MyColorLib.secondary,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          child: Text("Google"),
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: test,
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFFEFEFF),
                                            foregroundColor: MyColorLib.primary,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              side: BorderSide(
                                                color: MyColorLib.secondary,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          child: Text("Phone"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30,),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Bean & Brew?'),
                      TextButton(onPressed: test, child: Text('Create Account',style: TextStyle(color: MyColorLib.primary),))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
