import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home_page.dart';
import 'package:instagramclone/pages/signin.dart';
import 'package:instagramclone/pages/signup_page.dart';
import 'package:instagramclone/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const SignInPage(),
      routes: {
       SplashPage.id:(context)=>SplashPage(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        HomePage.id:(ctx)=>HomePage()

      },
    );
  }
}
