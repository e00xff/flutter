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

  // 2. Floating action button
  String _ftbValue = '';
  
  void _ftbOnClick() {
    setState(() {
      _ftbValue = DateTime.now().toString();
    });
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
                 
                // 2. Floating action button
                Text(_ftbValue),

              ],
            ),
          )
      ),

      // 2. Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: _ftbOnClick,
        backgroundColor: Colors.red,
        mini: true,
        child: const Icon(Icons.timer),
      ),

    );
  }
  
}