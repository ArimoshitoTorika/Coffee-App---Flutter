import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/pfp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColorLib.home_bg,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: PFP(profileSize: 50),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back, Torika!",
                      style: TextStyle(
                        color: MyColorLib.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Let's get your day started",
                      style: TextStyle(color: MyColorLib.primary, fontSize: 12),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: MyColorLib.primary,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Expanded(
            child: Container(
              height: 900,
              color: MyColorLib.home_bg,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          hint: Row(
                            children: [
                              Icon(Icons.search_outlined),
                              Text("Find your favorite coffee..."),
                            ],
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              width: 2,
                              color: MyColorLib.secondary,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              width: 2,
                              color: MyColorLib.secondary,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              width: 2,
                              color: MyColorLib.secondary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          // clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 180,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/cup-soda.svg',
                                      colorFilter: ColorFilter.mode(
                                        MyColorLib.secondary,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Text(
                                      "Pick Up",
                                      style: TextStyle(
                                        color: MyColorLib.secondary,shadows: [
                                          Shadow(
                                            color: Colors.black87,
                                            blurRadius: 10,
                                            offset: Offset(2, 2)
                                          )
                                      ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: -28,
                              top: -16,
                              child: Image.asset(
                                'assets/images/iced_coffee.png',
                                width: 140,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          // clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 180,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade700,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/coffee.svg',
                                      colorFilter: ColorFilter.mode(
                                        MyColorLib.secondary,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Text(
                                      "Dine In",
                                        style: TextStyle(
                                            color: MyColorLib.secondary,shadows: [
                                          Shadow(
                                              color: Colors.black87,
                                              blurRadius: 10,
                                              offset: Offset(2, 2)
                                          )
                                        ]
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: -12,
                              top: -50,
                              child: Image.asset(
                                'assets/images/hot_coffee.png',
                                width: 140,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("What's new?",style: TextStyle(color: MyColorLib.primary,fontWeight: FontWeight.w500,fontSize: 18),),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(width: 160,height: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.deepOrange)),
                        ),
                      ],
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
}
