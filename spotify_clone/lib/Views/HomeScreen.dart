import 'package:flutter/material.dart';

import '../Components/SquareTileTwoWidget.dart';
import '../Components/playlistTileWidget.dart';
import '../Components/squareTileWidget.dart';
import '../Utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(-1, -1),
                      colors: [
                        Colors.blueAccent,
                        KprimaryColor,
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, right: 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Card(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Icon(
                                          Icons.settings,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Good afternoon",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      PlaylistTileWidget(
                        imgUrl1:
                            "https://www.premadepixels.com/wp-content/uploads/2021/12/Paradise-Album-Cover-PP1.jpg",
                        imgUrl2:
                            "https://cdns-images.dzcdn.net/images/cover/d26b505d243d63ee2549eb90eb968a49/264x264.jpg",
                        title1: "Paradise Album",
                        title2: "Linkin Park",
                      ),
                      PlaylistTileWidget(
                        imgUrl1:
                            "https://cdn.wallpapersafari.com/74/90/qrRjxi.jpg",
                        imgUrl2:
                            "https://upload.wikimedia.org/wikipedia/en/2/25/Evanescence_-_Fallen.png",
                        title1: "Eminem Not Afraid",
                        title2: "Evanescence Album",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Recently played",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SquareTileWidget(
                              imageUrl:
                                  "https://marketplace.canva.com/EAE_1WTl7DA/1/0/1600w/canva-teal-and-pink-abstract-minimal-aesthetic-album-cover-CnfwIxC4-N8.jpg",
                              title: "Chilled Music",
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SquareTileWidget(
                              imageUrl:
                                  "https://i.pinimg.com/originals/0b/60/84/0b60846c98a6ecb810ff1a68fb98ce2f.jpg",
                              title: "Study Beats",
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SquareTileWidget(
                              imageUrl:
                                  "https://i.pinimg.com/236x/2b/1b/ca/2b1bca1858e6f6462380c7e426d8eb14.jpg",
                              title: "Rock Music",
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SquareTileWidget(
                              imageUrl:
                                  "https://static-cse.canva.com/blob/573253/10experttipsfordesigningwithablurredbackgroundfeaturedimage.jpg",
                              title: "Classic Music",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Made for you",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SquareTileTwoWidget(
                              imageUrl:
                                  "https://i.pinimg.com/550x/a6/a5/bb/a6a5bba86743c42b1b587384a57e0487.jpg",
                              title: "All Time Hits",
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            SquareTileTwoWidget(
                              imageUrl:
                                  "https://albumcoverzone.com/slir/w330/png24-front/albumcover0007864.jpg",
                              title: "2020 Hits",
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            SquareTileTwoWidget(
                              imageUrl:
                                  "https://cdns-images.dzcdn.net/images/cover/0bbaec24cee34c023a77745e06b66af7/200x200.jpg",
                              title: "EDM",
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
