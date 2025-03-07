import 'package:flutter/material.dart';
import 'package:my_project_netflix/screens/username.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserName()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Image.asset('assets/img/netflix_logo.png', width: 200),
        )
      ),
    );
  }
}