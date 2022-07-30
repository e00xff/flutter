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

  // Footer buttons
  String _fbValue = '';

  void _fbOnClick(String value) {
    if(value != null) {
      setState(() {
        _fbValue = value;
      });
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
              children: const <Widget>[
                 Text('Content')
              ],
            ),
          )
      ),

      // Footer buttons
      persistentFooterButtons: <Widget>[
        IconButton(onPressed: () => _fbOnClick('Button 1'), icon: const Icon(Icons.timer)),
        IconButton(onPressed: () => _fbOnClick('Button 2'), icon: const Icon(Icons.people)),
        IconButton(onPressed: () => _fbOnClick('Button 3'), icon: const Icon(Icons.map)),
      ],

    );
  }
  
}