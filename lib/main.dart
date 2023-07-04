import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_using_firebase/firebase_options.dart';

import 'package:login_using_firebase/pages/authloginstate.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthloginState(),
      title: 'login using firebase',
    );
  }
}
