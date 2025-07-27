import 'dart:async';

import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'BMI Calculator'),));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration( // Use const for BoxDecoration and LinearGradient
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
              begin: Alignment.topLeft, // Start of the gradient
              end: Alignment.bottomRight, // End of the gradient
              // Optional: add stops for more control over color transitions
              // stops: [0.0, 0.15, 0.3, 0.45, 0.6, 0.75, 1.0],
            ),
          ),
          child: Center(
            child: Image(
              image: AssetImage('Asset/images/sc.png'), // Corrected asset path assuming 'Asset' is intended
              fit: BoxFit.cover,
            ),
          ),
        ),



        );
  }
}