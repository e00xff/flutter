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

class _State extends State<MyApp> {

  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
      context: context, 
      builder: (_) => AlertDialog(
        title: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Ok'),
          ), 
        ],
      )
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

                 const Text('content'), 
                 ElevatedButton(onPressed: () => _showAlert(context, 'Do you like flutter, I  do.'), child: const Text('abc'))
              
              ],
            ),
          )
      ),
    );
  }
  
}