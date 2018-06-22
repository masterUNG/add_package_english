import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main()
 {
  runApp(new MyApp());
}

//Create RandomEnglishWords
class RamdomEnglishWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new MonitorChangeState();

  }
}

//Create Class for Monotor Change State
class MonitorChangeState extends State<RamdomEnglishWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final wordPair = new WordPair.random();
    return new Text(wordPair.asUpperCase, style: new TextStyle(fontSize: 30.0),);

  }
}


//Create MyApp
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final myRandomWord = new WordPair.random();


    return MaterialApp(

      title: 'Flutter Ung',

      home: new Scaffold(

        appBar: new AppBar(title: new Text('Main Toolbar'),),

        body: new Center(child: new RamdomEnglishWords()),

      ),

    );


  }
}