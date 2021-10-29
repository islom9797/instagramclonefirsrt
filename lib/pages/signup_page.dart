import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagramclone/services//Utils.dart';
import 'package:instagramclone/pages/home_page.dart';
import 'package:instagramclone/pages/signin.dart';
import 'package:instagramclone/services/auth_service.dart';
import 'package:instagramclone/services/pref_service.dart';

class SignUpPage extends StatefulWidget {
  static final String id = "signup";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var passwordcontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  var fullnamecontroller=TextEditingController();
  callHomePage() {
    String email=emailcontroller.text.toString().trim();
    String password=passwordcontroller.text.toString().trim();
    AuthService.signUpUser(context, email, password).then((user) => {
      _getfurebaseUser(user),
    });

  }
  _getfurebaseUser(User? user)async{
   // if(user!=null){
      await Prefs.saveUserId(user!.uid);
      Navigator.pushReplacementNamed(context,HomePage.id);
    //}
    // else{
    //   Utils.fireToast("Check your email or passwordhaha");
    // }
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(193, 53, 132, 1),
                  Color.fromRGBO(131, 58, 100, 1),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Instagram",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontFamily: "Billabong"),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white54.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child:  TextField(
                          controller: fullnamecontroller,

                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              hintText: "Full Name",
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white54.withOpacity(0.2),
                        ),
                        child: TextField(
                          controller: emailcontroller,
                          //   onChanged:(txt){if(txt.length>4&&txt.length<8){i="yana yozing"}},
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            //      label: Text("$ill"),
                              hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54),
                              border: InputBorder.none,
                              hintText: "Email"),


                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white54.withOpacity(0.2)
                        ),
                        child: TextField(
                          controller: passwordcontroller,

                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 17,color: Colors.white54),
                              hintText: "Pasword",
                              border: InputBorder.none
                          ),

                        ),


                      ),
                      SizedBox(height: 20,),
                      SafeArea(child: Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white54.withOpacity(0.2)
                        ),
                        child: TextButton(

                          onPressed: callHomePage,
                          child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,fontFamily: "Rubik-Regular"),),
                        ),

                      ),)

                    ],
                  )),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Billabong",
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignInPage.id);
                    },
                    child:const Text("Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Billabong",
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
