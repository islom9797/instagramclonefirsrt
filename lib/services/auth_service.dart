import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagramclone/pages/signin.dart';
import 'package:instagramclone/services/pref_service.dart';

class AuthService{
  static final auth=FirebaseAuth.instance;

  static Future<User?> signUpUser(BuildContext context,String email,String password) async{
    try{

        UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        User? user=userCredential.user;
        print(user.toString());
        return user;
    }on FirebaseAuthException catch(e){
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }

    }catch(e){
      print(e);


    }

   // return null;

  }
  static Future<User?> signInUser(BuildContext context,String email,String password) async{
    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);
      User? user=userCredential.user;
      print(user.toString());
      return user;
    }on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }catch(e){
      print(e);
    }
   // return null;
  }
  static void signoutUser(BuildContext context){
    auth.signOut();
    Prefs.removeUserId().then((value) => {
      Navigator.pushReplacementNamed(context, SignInPage.id),
    });
  }
}