import 'package:flutter/material.dart';
import 'package:implementacija_navigabilnosti/hamburger.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(title: const Text('Ladična navigacija'),backgroundColor: Color(
         0xFF3EA6A6),),
     drawer: const Hamburger(),
     body: Container(
       padding: const EdgeInsets.all(16),
       child: const Center(
         child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
             Text('Implementacija navigabilnosti:\n\n"hamburger" || ladična || drawer'
             ),
               Text("navigacja")

         ],
       ),
       ),
     ),

    );
  }
}
