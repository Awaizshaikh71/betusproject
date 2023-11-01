import 'dart:async';

import 'package:betusproject/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  // var _width=
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/SplashScreen.jpg.jpeg'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
