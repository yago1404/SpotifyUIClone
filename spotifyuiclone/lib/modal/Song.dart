import 'package:flutter/material.dart';

class Song extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            height: 170,
            child: Image.asset("assets/images/song.jpg", fit: BoxFit.contain),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Song Name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
