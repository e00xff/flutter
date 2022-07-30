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

  // Assignment
  String _value = '';

  void _onClick() {
    setState(() {
      _value = DateTime.now().toString();
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),

      // Assignment
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: <Widget>[
            const Text('Hello Drawer'),
            ElevatedButton(onPressed: _onClick, child: const Text('Close'))
          ]),
        ),
      ),

      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                 Text(_value)
              ],
            ),
          )
      ),

    );
  }
  
}