import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

enum Answers{YES,NO,MAYBE}

class _State extends State<MyApp> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch(await showDialog(
      context: context, 

      // builder: (_) => SimpleDialog(
      //   title: const Text('Do you like Flutter?'), children: <Widget>[
      //       SimpleDialogOption(child: const Text('Yes'), onPressed: () => Navigator.pop(context, Answers.YES)),
      //       SimpleDialogOption(child: const Text('No'), onPressed: () => Navigator.pop(context, Answers.NO)),
      //       SimpleDialogOption(child: const Text('Maybe'), onPressed: () => Navigator.pop(context, Answers.MAYBE)),
      //     ],
      // )

      builder: (BuildContext context) {
         return SimpleDialog(
           title: const Text('Do you like Flutter?'),
           children: <Widget>[

            SimpleDialogOption(child: const Text('Yes'), onPressed: (){Navigator.pop(context, Answers.YES);},),
            SimpleDialogOption(child: const Text('NO'), onPressed: (){Navigator.pop(context, Answers.NO);},),
            SimpleDialogOption(child: const Text('Maybe'), onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
            
           ],
         );
      }
    
    )) {
      case Answers.YES:
        _setValue('Yes');
      break;
      case Answers.NO:
        _setValue('No');
      break;
      case Answers.MAYBE:
        _setValue('Maybe');
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value),
                ElevatedButton(onPressed: _askUser, child: Text('Click me'))
              ],
            ),
          )
      ),
    );
  }
  
}