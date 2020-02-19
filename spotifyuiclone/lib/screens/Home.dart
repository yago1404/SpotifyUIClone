import 'package:flutter/material.dart';
import 'package:spotifyuiclone/screens/HomePage.dart';
import 'package:spotifyuiclone/screens/Search.dart';

import 'Library.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  List<Widget> _children = [
    HomePage(),
    Search(),
    Library(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black87,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                    color: Color(
                        0xffA7A8AC)))), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              title: Text('Library'),
            ),
          ],
          onTap: onTabTapped,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

}
