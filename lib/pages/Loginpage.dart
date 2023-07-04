// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_using_firebase/elements/googlebutton.dart';
import 'package:login_using_firebase/elements/myButton.dart';
import 'package:login_using_firebase/elements/mytextfield.dart';
import 'package:login_using_firebase/pages/googleAuth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  void EmailSignin() async {
    showDialog(
        context: context,
        builder: ((context) => Center(
              child: Container(
                  height: 50, width: 50, child: CircularProgressIndicator()),
            )));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usercontroller.text, password: passwordcontroller.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      errormessage(e.code);
    }
  }

  void errormessage(String message) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.deepPurple,
        title: Center(
            child: Text(
          message,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyTextField(
          controltext: usercontroller,
        ),
        MyTextField(
          controltext: passwordcontroller,
        ),
        MyButton(ontapFunction: EmailSignin),
        GoogleButton(
          onpressed: GoogleAuthX().googleSignin1,
        )
      ],
    ));
  }
}
