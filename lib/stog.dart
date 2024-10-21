import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class Stog extends StatelessWidget{
  const Stog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('prva ruta'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Drugi()));
            },
            child: Text('Idi na 2. stranicu')),
      ),
    );
  }
}

class Drugi extends StatelessWidget{
  const Drugi({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Druga stog stranica'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Idi nazad')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Treci()));
            }, child: Text('Idi na 3. stog stranicu'))
          ],
        ),

      ),
    );
  }
}

class Treci extends StatelessWidget{
  const Treci({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treća stog stranica'),
      ),
        body: Center(
          child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Idi nazad')
          ),
      ),
    );
  }
}

