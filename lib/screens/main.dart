import 'package:flutter/material.dart';
import 'package:took/screens/home.dart';
import 'package:took/screens/profile/profile.dart';
import 'package:took/screens/signup/final.dart';
import 'signup/signup.dart';
import 'signup/signupid.dart';
import 'signup/password.dart';
import 'login.dart';
import 'signup/final.dart';
import 'profile/mycomment.dart';
import 'profile/mypost.dart';
import 'profile/info_agree.dart';
import 'profile/use_agree.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Pretendard"
      ),
      routes: {
        'home' : (context) => Home(),
        'signup' : (context) => Signup(),
        'signupid' : (context) => Signupid(),
        'password' : (context) => Password(),
        'final' : (context) => Final(),
        'profile' : (context) => Profile(),
        'mypost' : (context) => Mypost(),
        'mycomment' : (context) => Mycomment(),
        'info_agree' : (context) => InfoAgree(),
        'use_agree' : (context) => UseAgree(),
      },
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
