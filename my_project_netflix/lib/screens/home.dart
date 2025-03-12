import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height:size.height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/backgrond_seven.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(
                height:size.height * 0.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.0),
                    ]
                  )
                ),
              ),
              SizedBox(height: size.height * 0.02,
              ),
              Positioned(
                top: 50,
                child: Container(
                  height: size.height * 0.6,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/img/Logo.png", width: 50),
                          SizedBox(width: size.width * 0.06
                          ),
                          Text("TV shows", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20
                            ),),
                            SizedBox(
                            width: size.width * 0.1
                          ),
                            Text("Movies", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20
                            ),),
                            SizedBox(
                            width: size.width * 0.1
                          ),
                            Text("My List", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20
                            ),),
                        ],
                      ),
                      // Spacer(),
                      SizedBox(
                        height: size.height * 0.33
                        ),
                      Row(
                        children: [
                          Image.asset("assets/img/top_net.png", width:35,
                          ),
                          Text("#2 in México today",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        width: size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/img/add_icon.jpg", width: 20),
                                Text("My List",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 179, 136, 136),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  )
                                ),
                              ],
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.25  ,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(158, 249, 248, 248),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/img/play_icon.png", width: 20,
                                      ),
                                    Text("Play",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset("assets/img/info_icon.png", width: 25),
                                Text("Info",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 179, 136, 136),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  )
                                ),
                              ],
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}