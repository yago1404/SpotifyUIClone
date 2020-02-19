import 'package:flutter/material.dart';

class HistoricRow extends StatelessWidget {

  String _name;
  String _subtitle;

  HistoricRow(String name, String subtitle){
    _name = name;
    _subtitle = subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      child: ListTile(
        leading: Image.asset("assets/images/song.jpg", fit: BoxFit.contain,),
        title: Text(
            _name,
          style: TextStyle(
            color: Colors.white
          ),
        ),
        subtitle: Text(this._subtitle,
            style: TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }
}
