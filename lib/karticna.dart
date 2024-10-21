import 'package:flutter/material.dart';
import 'package:implementacija_navigabilnosti/Kartice/knjige.dart';
import 'package:implementacija_navigabilnosti/Kartice/filmovi.dart';
import 'package:implementacija_navigabilnosti/Kartice/pjesme.dart';

class Karticna extends StatefulWidget{
  @override
  _KarticnaState createState() => _KarticnaState();
}
class _KarticnaState extends State<Karticna> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
      appBar: AppBar(
        title: Text('Kartična navigacija'),
        backgroundColor: Color(
          0xFF3EA6A6),
        bottom: TabBar(tabs: [
          Tab(
            text: "Knjige",
            icon: Icon(Icons.book),
          ),
          Tab(
            text: "Filmovi",
            icon: Icon(Icons.movie),
          ),
          Tab(
            text: "Pjesme",
            icon: Icon(Icons.audiotrack),
          ),
        ],
        ),
      ),
      body: TabBarView(children: [
        Knjige(),
        Filmovi(),
        Pjesme(),
      ])
    ),
    );
  }
}