import 'package:flutter/material.dart';
import 'package:implementacija_navigabilnosti/home.dart';
import 'package:implementacija_navigabilnosti/karticna.dart';
import 'package:implementacija_navigabilnosti/donja_karticna.dart';
import 'package:implementacija_navigabilnosti/stog.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implementacija navigabilnosti',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        //useMaterial3: true,
      ),
      initialRoute: 'home',
      //home: Home(title: 'Implementacija navigabilnosti'),
      routes: {
        'home': (context) => Home(),
        'karticna': (context) => Karticna(),
        'donja_karticna': (context) => DonjaKarticna(),
        'stog': (context) => Stog(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
    );
  }
}
