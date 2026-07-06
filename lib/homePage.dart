import 'package:coffee_app/Style/color.dart';
import 'package:coffee_app/Widgets/pfp.dart';
import 'package:flutter/material.dart';
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
          children: [
            PFP(profileSize: 50),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good morning, Torika!",style: TextStyle(color: MyColorLib.primary,fontWeight: FontWeight.bold),),
                Text("Let's get your day started",style: TextStyle(color: MyColorLib.primary,fontSize: 14),textAlign: TextAlign.start,),
              ],
            )

          ],
        ),
      ),
      body:SingleChildScrollView(child: Center(
        child: Expanded(
          child: Container(
            color: MyColorLib.bgColor,
            child: Text('data'),
          ),
        ),
      )),
    );
  }
}
