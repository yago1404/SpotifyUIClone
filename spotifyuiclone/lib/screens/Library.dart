import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  _body() {
    return TabBarView(
      children: <Widget>[
        Container(
          color: Colors.black87,
          padding: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                child: ListTile(
                  leading: Icon(Icons.add, color: Colors.white,),
                  title: Text("Criar playlist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              ListTile(
                leading: Image.asset("assets/images/song.jpg"),
                title: Text("Minhas músicas",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("600 songs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 10,),

              ListTile(
                leading: Image.asset("assets/images/song.jpg"),
                title: Text("Rap nacional",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("600 songs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 10,),


              ListTile(
                leading: Image.asset("assets/images/song.jpg"),
                title: Text("Outra playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("600 songs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),


              SizedBox(height: 10,),

              ListTile(
                leading: Image.asset("assets/images/song.jpg"),
                title: Text("Mais uma playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("600 songs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),


              SizedBox(height: 10,),

              ListTile(
                leading: Image.asset("assets/images/song.jpg"),
                title: Text("e outra playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("600 songs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 10,),

            ],
          ),
        ),
        Container(
          child: Center(child: Text("teste"),),
        )
      ],
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      title: TabBar(tabs: [
        Tab(text: "Músicas",),
        Tab(text: "Podcast",)
      ],
      indicatorColor: Colors.white,
      ),
    );
  }
}
