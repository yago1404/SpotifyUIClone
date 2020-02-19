
import 'package:flutter/material.dart';
import 'package:spotifyuiclone/modal/Song.dart';
import 'package:spotifyuiclone/screens/config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  _calledConfig(context);
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
          _listPlayed(),

          SizedBox(height: 30,),

          Text("Mais ouvidas",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(),

          SizedBox(height: 30,),

          Text("Macadas como Favorito",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(),

          SizedBox(height: 30,),

          Text("Sua rádio",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          SizedBox(height: 15,),
          _listPlayed(),


          SizedBox(height: 50,),
        ],
      ),
    );
  }

  _listPlayed() {
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

   _calledConfig(context) {
    Navigator.push(context, MaterialPageRoute(builder : (context) => Config()));
   }
}
