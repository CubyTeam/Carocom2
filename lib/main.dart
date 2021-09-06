import 'package:carocom/screens/MainScreen.dart';
import 'package:carocom/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'screens/Welcome/LoginScreen.dart';
import 'screens/Welcome/signupscreen.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'LoginScreen',
      routes: {
        'LoginScreen' : (context)=> LoginScreen(),
        'SignUp' : (context)=>SignUpp(),
         'Main' : (context)=>MainScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: new ThemeData(),
      home:MainScreen(),
    );
  }
}

