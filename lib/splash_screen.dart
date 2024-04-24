import 'dart:async';

import 'package:flutter/material.dart';

import 'get_user_info.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 1),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GetUserInfo(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
            // decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topRight,
            //         end: Alignment.bottomLeft,
            //         colors: [Color(0xff9dd2ee), Color(0xffffffff)])),
          child: Center(child: Image(image: AssetImage("assets/images/GROUP_OF_INSTITUTE_NEW_LOGO.png"), height: 150, width: 150,))
      ),backgroundColor: Colors.white,
    );
  }
}

class HomePageee extends StatefulWidget {
  const HomePageee({super.key});

  @override
  State<HomePageee> createState() => _HomePageeeState();
}

class _HomePageeeState extends State<HomePageee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("IIIIIII"),),
    );
  }
}
