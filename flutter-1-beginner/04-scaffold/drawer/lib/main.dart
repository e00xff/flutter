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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 3. Drawer
      appBar: AppBar(
        title: const Text('App Name'),
        backgroundColor: Colors.red,
      ),

      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              const Text('It is: Drawer'),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Close') )
            ],
          ),
        ),
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

    );
  }
  
}