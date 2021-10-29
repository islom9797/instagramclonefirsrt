import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:instagramclone/custom/custom_dialog.dart';
import 'package:instagramclone/pages/home_page.dart';
import 'package:instagramclone/pages/signup_page.dart';
import 'package:instagramclone/services/Utils.dart';
import 'package:instagramclone/services/auth_service.dart';
import 'package:instagramclone/services/pref_service.dart';

class SignInPage extends StatefulWidget {
  static final String id = "signin_page";

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();

   callHomePage() {
     String email=emailcontroller.text.toString().trim();
     String password=passwordcontroller.text.toString().trim();
     AuthService.signInUser(context, email, password).then((user) => {
       _getfurebaseUser(user),
     });

  }
  _getfurebaseUser(User? user)async{
     if(user!=null){
       await Prefs.saveUserId(user.uid);
       Navigator.pushReplacementNamed(context,HomePage.id);
     }
     else{
       Utils.fireToast("Check your email or password");
     }
  }
  callSignupPage() {
    Navigator.pushNamed(context,SignUpPage.id);
  }


  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    passwordcontroller;

  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    PhoneInputFormatter.addAlternativePhoneMasks(
      countryCode: 'UZ',
      alternativeMasks: [
        '+000 00 000 00 00',
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
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
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Intagram",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: "Billabong"),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7)),
                  child: TextField(

                    controller: emailcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.white54)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7)),
                  child:  TextField(
                    controller: passwordcontroller,

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 17, color: Colors.white54)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white54.withOpacity(0.2), width: 2),
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      
                    )
                  ,
                    // child: TextButton(
                    //   onPressed: callHomePage,
                    //   child: const Text(
                    //     "LOGIN",
                    //     style: TextStyle(
                    //         color: Colors.white, fontWeight: FontWeight.w800),
                    //   ),
                    // )
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:Color.fromRGBO(193, 53, 132, 1).withOpacity(1.0),
                      elevation: 0,
                      textStyle: TextStyle(fontFamily: "Billabong",fontSize: 20,fontWeight: FontWeight.bold,)
                        ,


                    ),
                    onPressed: callHomePage,
                    child: Text("Login"),
                  ),
                ),
              ],
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Billabong"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (context)=>CustomDialog(data: "123",getter: "efes",gettercard: "ewfgw",idtransaction: "efsf",komissiya: "sefsef",sender: "sefsef",settercard: "esfes",summa: "efsef",typetrasn: "sefsef",),);
                    },
                   // onTap:callSignupPage,
                  //  onTap: CustomDialog(data: "123",getter: "efes",gettercard: "ewfgw",idtransaction: "efsf",komissiya: "sefsef",sender: "sefsef",settercard: "esfes",summa: "efsef",typetrasn: "sefsef",),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Billabong",
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
