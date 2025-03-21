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
      backgroundColor: Colors.black,      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Header(size: size),
            Previews(size: size),
            ContinueUser(size: size),
            PopularOnNetflix(
              size: size,
             title: "Popular on Netflix",
             imagefolder: "popular",
             ),
            PopularOnNetflix(
              size: size, 
              title: "Trending Now",
              imagefolder: "trending",
              ),
              PopularOnNetflix(
              size: size, 
              title: "Top 10 in México",
              imagefolder: "top10",
              ),
              PopularOnNetflix(
              size: size, 
              title: "My list",
              imagefolder: "my_list",
              ),
          ], 
        ),
      ),
    );
  }
}

class PopularOnNetflix extends StatelessWidget {
  const PopularOnNetflix({
    super.key,
    required this.size,
    required this.title, 
    required this.imagefolder,
  });

  final Size size;
  final String title, imagefolder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 1),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
            style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,)),
            SizedBox(height: size.height * 0.03,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Popular(size: size, image: "assets/img/$imagefolder/black_popular.jpg"),
                  Popular(size: size, image: "assets/img/$imagefolder/blue_popular.jpg"),
                  Popular(size: size, image: "assets/img/$imagefolder/cyberpunk_popular.jpg"),
                  Popular(size: size, image: "assets/img/$imagefolder/avatar_popular.jpg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  const Popular({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: size.height * 0.25,
        width: size.width * 0.4,
        color: Colors.white,
        child: Image.asset(image, 
        fit: BoxFit.cover,),
      ),
    );
  }
}

class ContinueUser extends StatelessWidget {
  const ContinueUser({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Continue Watching for user",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,),),
        SizedBox(height: size.height * 0.03,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            ContinueWatching(
              size: size, 
              image: "assets/img/slider/violet_preview.jpg"
              ),
              ContinueWatching(
              size: size, 
              image: "assets/img/slider/silent_voice_preview.jpg"
              ),
              ContinueWatching(
              size: size, 
              image: "assets/img/slider/scissors_preview.jpg"
              ),
              ContinueWatching(
              size: size, 
              image: "assets/img/slider/nana_preview.jpg"
              ),    
            ],
          ),
        ),
    ],
                    ),
                  ),
                );
  }
}

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Container(
          height: size.height * 0.25,
          width: size.width * 0.35,
        ),
        Container(
          height: size.height * 0.22,
          width: size.width * 0.35,
          child: Image.asset(image, 
            fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height * 0.05,
            width: size.width * 0.35,
            color: Colors.grey.shade900,
            child: Column(
              children: [
                Container(
                  height: 5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5, 
                    vertical: 2
                  ),
                  child: Row(
                    mainAxisAlignment: 
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/img/info_icon.png",
                        height: size.height * 0.035,
                        width: size.width * 0.15,
                        ),
                      Image.asset(
                        "assets/img/dots_icon.png",
                        height: size.height * 0.035,),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
        ],
      ),
    );
  }
}

class Previews extends StatelessWidget {
  const Previews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Previews",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,),),
              SizedBox(height: size.height * 0.03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ScrollContent(
                      size: size, image: "assets/img/slider/bojack.jpg",),
                    ScrollContent(
                      size: size, image: "assets/img/slider/zero.jpg",),
                    ScrollContent(
                      size: size, image: "assets/img/slider/reagan.jpg",),
                    ScrollContent(
                      size: size, image: "assets/img/slider/jibaro.jpg",),
                    ScrollContent(
                      size: size, image: "assets/img/slider/lapis.jpg",),  
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ScrollContent extends StatelessWidget {
  const ScrollContent({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
          radius: size.width * 0.14,
          backgroundColor: Colors.black,  
          backgroundImage: AssetImage(image),
        ),
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
    return Stack(
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
    );
  }
}