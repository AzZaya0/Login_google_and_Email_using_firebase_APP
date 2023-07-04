import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_using_firebase/pages/Loginpage.dart';
import 'package:login_using_firebase/pages/homepage.dart';

class AuthloginState extends StatefulWidget {
  const AuthloginState({super.key});

  @override
  State<AuthloginState> createState() => _AuthloginStateState();
}

class _AuthloginStateState extends State<AuthloginState> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else
            return LoginPage();
        });
  }
}
