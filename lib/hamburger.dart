import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('\nNavigacija\n',
              style: TextStyle(
                fontSize: 28,
                //fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3EA6A9),
                ),
              ),
            ),

        ListTile(title: Text('Home'),
          leading: Icon(Icons.home),
          onTap: ()=> Navigator.pushReplacementNamed(context, 'home',
          ),

        ),
        ListTile(title: Text('Gornja kartična'),
          leading: Icon(Icons.abc),
          onTap: ()=> Navigator.pushNamed(context, 'karticna',),
        ),
        ListTile(title: Text('Donja kartična navigacija'),
          leading: Icon(Icons.ad_units),
          onTap: ()=> Navigator.pushNamed(context, 'donja_karticna',
          ),
        ),
        ListTile(title: Text('Stožna navigacija'),
          leading: Icon(Icons.stacked_bar_chart),
          onTap: () => Navigator.pushNamed(context, 'stog'),
        ),
      ],
        ),
      ),
    );
  }
}
