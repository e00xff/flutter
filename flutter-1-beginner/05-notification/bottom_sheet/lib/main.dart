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

  // Bottom Sheet
  void _showBottom() {
    showModalBottomSheet<void>(
      context: context, 
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Text(
                'Text here', 
                style: TextStyle(
                  color: Colors.red, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('close')),
              
            ],
          ),
        );
      }
    );
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
                const Text('Add widget here'),
                  ElevatedButton(
                   onPressed: _showBottom, 
                   child: const Text('Click me')
                  ),
              ],
            ),
          )
      ),
    );
  }
  
}