import 'package:flutter/material.dart';

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

class _State extends State<MyApp> {

  // 1. AppBar
  int _valueAppBar = 0;
  
  void _addAppBar() {
    setState(() {
      _valueAppBar++;
    });
  }

  void _removeAppBar() {
    setState(() {
      _valueAppBar--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(onPressed: _addAppBar, icon: const Icon(Icons.add)),
          IconButton(onPressed: _removeAppBar, icon: const Icon(Icons.remove)),
        ],
      ),

      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                 
                // 1. AppBar
                Text(
                  _valueAppBar.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37.0
                  ),
                ),

              ],
            ),
          )
      ),

    );
  }
  
}