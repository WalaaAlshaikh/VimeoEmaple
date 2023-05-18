import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Example',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // this the vimeo id that can be included in the url
  // if there is more than one video u cant put the ids in a list and passing the ids in the listView
  String videoId = '70591644';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Vimeo"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Text("Vimeo Example", style: TextStyle(fontSize: 25),),
            const SizedBox(height: 50,),
            SizedBox(
              height: 250,
              child: VimeoPlayer(
                videoId: videoId,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
