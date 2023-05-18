import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
          "Anti Fat",
          style: TextStyle(
              color: Colors.green, fontSize: 60, fontWeight: FontWeight.bold),
        ),
        Image.asset("img/328.png")
      ]),
    );
  }
}
