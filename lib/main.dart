import 'package:flutter/material.dart';
import 'package:gogreen/aboutus.dart';
import 'package:gogreen/cart.dart';
import 'package:gogreen/forgetpass.dart';
import 'package:gogreen/login.dart';
import 'package:gogreen/myorders.dart';
import 'package:gogreen/signup.dart';
import 'package:gogreen/splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:gogreen/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home:AnimatedSplashScreen(
        splashIconSize: double.infinity,
        centered: true,
        splash: const Splash(), nextScreen: const Home()),
      routes: {
        "login" :(context) => const Login(),
        "signup" : (context) => const SignUp(),
        "pass" :(context) => const Forgetpass(),
      },
    );
  }
}

