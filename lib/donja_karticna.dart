import 'package:flutter/material.dart';
import 'package:implementacija_navigabilnosti/kartice_donje/obitelj.dart';
import 'package:implementacija_navigabilnosti/kartice_donje/prijatelji.dart';

class DonjaKarticna extends StatefulWidget {
  @override
  _DonjaKarticnaState createState() => _DonjaKarticnaState();
}

class _DonjaKarticnaState extends State<DonjaKarticna> {
  int _odabranaKartica = 0;

  void _pritisakKartice(int odabranaKartica) {
    setState(() {
      _odabranaKartica = odabranaKartica;
    });
  }

  static const List<Widget> _kartice = <Widget> [
    Center(child: Obitelj()), // Assuming Obitelj is a widget
    Center(child: Prijatelji()), // Assuming Prijatelji is a widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donja kartična navigacija'),
        backgroundColor: const Color(0xFF3EA6A6),
      ),
      body: Center(
        child: _kartice.elementAt(_odabranaKartica),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.family_restroom),
              label: 'Obitelj',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.masks),
              label: 'Prijatelji',

            ),
          ],
          currentIndex: _odabranaKartica,
          onTap: _pritisakKartice,
      ),
    );
  }
}

