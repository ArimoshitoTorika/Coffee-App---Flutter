import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/pfp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        backgroundColor: MyColorLib.bgColor,
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
              color: MyColorLib.bgColor,
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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: MyColorLib.primary,
                              ),
                              height: 180,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.network(
                                  'https://lh3.googleusercontent.com/aida-public/AB6AXuDjxaSYYLa1i6OvfwOWirZt40cdpuM5aSm9VlD3PqivJfFYosdOtkC7aU459jp2bsW5I6NN8SLNC4rFkYxnsGU1SK8ZENbZCQ9itpkXFj2nnxCVqkAuy6BuuPSaMUv_PaGs3I_BhBssCItVANjrB6GQQazQxrxuEzM24Nagd9QzHChg3LqkzvB7H4xH0I9L_vfRUtFxFOku42qR0cKF78D_aABAdHkK_5_xIFIiQE-1Hzi5XhI4CfjdnA',
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: MyColorLib.primary,
                            height: 40,
                            width: 300,
                          ),
                          Container(
                            color: Colors.green,
                            height: 40,
                            width: 300,
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
      ),
    );
  }
}
