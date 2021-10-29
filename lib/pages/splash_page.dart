import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static final String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 100, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
                  child: Text(
                    "Instagram",style: TextStyle(color: Colors.white,fontFamily: "Billabong",fontSize: 45),
                  ),
                  

                ),
            ),
            Text("All rights reserved"),
            SizedBox(width: 20,)
          ],
        ),


      ),
    );
  }
}
