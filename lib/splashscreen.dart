import 'dart:js';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_application_3/pertemuan2.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key, required this.title});

  final String title;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacement(
          this.context,
          MaterialPageRoute(
              builder: (context) => pertemuan2(title: 'Pertemuan2')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 78, 199, 247),
      body: Center(
        child: Image.asset('images/logo.png'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
    }
}