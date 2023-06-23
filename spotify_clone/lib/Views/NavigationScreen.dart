import 'package:flutter/material.dart';
import 'package:spotify_clone/Utils/styles.dart';
import 'package:spotify_clone/Views/HomeScreen.dart';
import 'package:spotify_clone/Views/LibraryScreen.dart';
import 'package:spotify_clone/Views/SearchScreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  Widget GetScreen() {
    if (_selectedIndex == 0) {
      return const HomeScreen();
    } else if (_selectedIndex == 1) {
      return const SearchScreen();
    } else {
      return const LibraryScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: SafeArea(
        child: GetScreen(),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          backgroundColor: kNavbarColor,
          unselectedItemColor: kNavbarUnselectedIconsColor,
          selectedItemColor: kNavbarselectedIconsColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_rounded),
              label: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}
