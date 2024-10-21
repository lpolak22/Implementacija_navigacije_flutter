/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Pjesme extends StatefulWidget {
  const Pjesme({super.key});

  @override
  State<Pjesme> createState() => _PjesmeState();

}
class _PjesmeState extends State<Pjesme> {
  final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'gNL7mgL7VF0',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: YoutubePlayer(
          controller: _controller
          ),
        ),
    );
  }
}*/



import 'package:flutter/cupertino.dart';

class Pjesme extends StatelessWidget{
  const Pjesme({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        //child: Text("Head First Android Development: A Brain-Friendly Guide, Griffiths D., O'Reily, 2018+"),
        child: Text('Dio posvećen pjesmama'),
      ),
    );
  }

}