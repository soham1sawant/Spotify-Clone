import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> coverList = [
    "https://i.pinimg.com/originals/f5/82/47/f58247463e38a536f442bfb816f62c6b.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/09/electro-synthwave-album-cover-500x500.jpg",
    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102342461/original/68ef1e1fab3c4028d51f7fd7cfa9bad2232e576c/create-a-copyright-free-album-cover.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2018/07/Digital-World-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg"
  ];
  Widget albumContainer(String coverUrl, String coverName, String singerName) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                  height: 140.0, width: 140.0, child: Image.network(coverUrl)),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              coverName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              singerName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recommended for you",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  albumContainer(coverList[0], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(coverList[1], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(coverList[2], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            ),
            Text(
              "New Music",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  albumContainer(coverList[3], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(coverList[4], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(coverList[5], "CoverName", "SingerName"),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
