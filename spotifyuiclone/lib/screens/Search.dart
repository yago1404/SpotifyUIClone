import 'package:flutter/material.dart';
import 'package:spotifyuiclone/modal/HistoricRow.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.black87,
      child: ListView(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
              )
            ),
            padding: EdgeInsets.only(left: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'Enter a search term'
                ),
            ),
          ),
          Row(
            children: <Widget>[
              _card(Colors.blue, "Rock"),
              SizedBox(width: 15,),
              _card(Colors.green, "Pop"),
            ],
          ),
          Row(
            children: <Widget>[
              _card(Colors.yellow, "Hip-Hop"),
              SizedBox(width: 15,),
              _card(Colors.greenAccent, "Indie"),
            ],
          ),
          SizedBox(height: 25,),
          Container(
              padding:EdgeInsets.only(left: 10),
              child: Text("Histórico",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
          ),
          HistoricRow("Lil Wayne", "Hot"),
          HistoricRow("50 Cent", "In the club"),
          HistoricRow("Eminem", "Lose your self"),
          HistoricRow("Marina the diamond", "froot")
        ],
      ),
    );
  }

  _card(color, content) {
    return Container(
      width: 150,
      height: 110,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
          )
      ),
      child: Text(
          content,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
