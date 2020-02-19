import 'package:flutter/material.dart';
import 'package:spotifyuiclone/modal/Song.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
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

          type: BottomNavigationBarType.fixed,
          items: [
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
        ),
      ),
    );
  }

  _body(context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      color: Colors.black87,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onTap: (){
                  print("hello world");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Text("Tocados recente",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(context),

          SizedBox(height: 30,),

          Text("Mais ouvidas",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(context),

          SizedBox(height: 30,),

          Text("Macadas como Favorito",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(context),

          SizedBox(height: 30,),

          Text("Sua rádio",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(context),


          SizedBox(height: 50,),
        ],
      ),
    );
  }

  _listPlayed(context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Song(),
          Song(),
          Song(),
          Song(),
          Song(),
          Song(),
          Song(),
          Song(),
        ],
      ),
    );
  }
}
