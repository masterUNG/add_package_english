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

    return new MonitorChangeState();

  } // State Method

} // RamdomEnglishWords Class

//Create Class for Monotor Change State
class MonitorChangeState extends State<RamdomEnglishWords>{

  final wordArray = <WordPair>[];

  @override
  Widget build(BuildContext context) {

//    Learn Create ListView
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('This is ListView'),
      ),
    body: new ListView.builder(itemBuilder: (context, index){

        if (index >= wordArray.length) {
          wordArray.addAll(generateWordPairs().take(10));
        }
        return myBuildRow(wordArray[index], index);

    }),
    );
  } //Widget Method

  Widget myBuildRow(WordPair wordPair, int index){

    final myColor = index % 2 == 0 ? Colors.red : Colors.blue;

    return new ListTile(
      title: new Text(wordPair.asUpperCase,
        style: new TextStyle(fontSize: 20.0, color: myColor),
      ),
    );
  } // Widget myBuildRow

} // MonitorChangeState Class

//Create MyApp
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final myRandomWord = new WordPair.random();

    return MaterialApp(

      title: 'Flutter Ung',

      home: new RamdomEnglishWords()

    );

  } // Widget Build

} // MyApp Class