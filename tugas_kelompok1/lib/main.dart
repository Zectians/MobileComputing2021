import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print('jawaban telah dipilih');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'siapa namamu?',
      'Apa hobimu?,',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi'),
          ),
          body: Column(
            children: <Widget>[
              Text(question[questionIndex]),
              RaisedButton(
                child: Text('Jawaban 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Jawaban 2'),
                onPressed: answerQuestion,
              )
            ],
          )
          // title: 'Flutter Demo',
          // theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.blue,
          ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
