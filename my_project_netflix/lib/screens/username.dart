import 'package:flutter/material.dart';
import 'package:my_project_netflix/screens/home.dart';
import 'package:my_project_netflix/screens/nav.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            Header(size: size),
            SizedBox(height: size.height * 0.10),
            Username(
              size: size,
            username1: "Flutter",
            username2: "Dart",
            image1: "assets/img/profile1.jpg",
            image2: "assets/img/profile2.png",
            ),
            SizedBox(height: size.height * 0.01),
            Username(
              size: size,
            username1: "Userr",
            username2: "Interface",
            image1: "assets/img/profile3.jpg",
            image2: "assets/img/profile4.jpg",
            ),
            SizedBox(height: size.height * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   width: size.width * 0.075,
                //   height: size.height * 0.05,
                // ),
                Image.asset('assets/img/añadir_perfil1.jpeg', width:150),
                SizedBox(
                  width: size.width * 0.075,
                  height: size.height * 0.02,
                ),
                Text("Añadir perfil", style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
     ));
  }
}

// ignore: must_be_immutable
class Username extends StatelessWidget {
  const Username({
    super.key,
    required this.size,
    required this.username1,
    required this.username2,
    required this.image1,
    required this.image2,
  });

  final Size size;
  final String username1, username2, image1, image2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
          },
          child: Column(
            children:[
              Image.asset(image1, width: size.width * 0.4, height: size.width * 0.4, fit: BoxFit.cover),
              SizedBox(height: size.height * 0.01),
              Text(username1, style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        SizedBox(width: size.width * 0.08),
        Column(
          children:[
            Image.asset(image2, width: size.width * 0.4, height: size.width * 0.4, fit: BoxFit.cover),
            SizedBox(height: size.height * 0.01),
            Text(username2, style: TextStyle(color: Colors.white))
          ],
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: size.width * 0.25),
        Image.asset('assets/img/netflix_logo.png', width:200, height: 100),
        SizedBox(width: 70),
        Image.asset('assets/img/pencil.png', width:20),
      ],
      
    );
  }
}