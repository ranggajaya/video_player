import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),

        body: AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer.network(
                  'https://mybam1804.000webhostapp.com/videoPlayer/video1.mp4',
                  betterPlayerConfiguration: BetterPlayerConfiguration(
                  aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}