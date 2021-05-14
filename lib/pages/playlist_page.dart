import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  final List<String> coverList = [
    "https://i.pinimg.com/originals/f5/82/47/f58247463e38a536f442bfb816f62c6b.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/09/electro-synthwave-album-cover-500x500.jpg",
    "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102342461/original/68ef1e1fab3c4028d51f7fd7cfa9bad2232e576c/create-a-copyright-free-album-cover.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2018/07/Digital-World-album-cover-design.jpg",
    "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg"
  ];

  Widget listItem(String coverUrl, String albumTitle, String singerName) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(coverUrl),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      albumTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      singerName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your Favorite Music",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  listItem(coverList[0], "AlbumTitle", "SingerName"),
                  listItem(coverList[1], "AlbumTitle", "SingerName"),
                  listItem(coverList[2], "AlbumTitle", "SingerName"),
                  listItem(coverList[3], "AlbumTitle", "SingerName"),
                  listItem(coverList[4], "AlbumTitle", "SingerName"),
                  listItem(coverList[5], "AlbumTitle", "SingerName"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
