import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/playlist_page.dart';
import 'package:spotify_clone/pages/profile_page.dart';
import 'package:spotify_clone/pages/search_page.dart';

void main() {
  runApp(SpotifyClone());
}

class SpotifyClone extends StatefulWidget {
  @override
  _SpotifyCloneState createState() => _SpotifyCloneState();
}

class _SpotifyCloneState extends State<SpotifyClone> {
  int _currenTab = 0;

  final Tabs = [HomePage(), SearchPage(), PlaylistPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Tabs[_currenTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currenTab,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                label: "Home",
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white),
                label: "Search",
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music, color: Colors.white),
                label: "Music Library",
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white),
                label: "Your Account",
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currenTab = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
