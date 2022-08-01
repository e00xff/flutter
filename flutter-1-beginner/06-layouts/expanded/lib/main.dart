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
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[

                 const Text('Homer Simpson'),
                 Expanded(child: Image.asset('images/homer.png')),
                 Expanded(child: Image.network('https://upload.wikimedia.org/wikipedia/ka/a/aa/Bart_Simpson_200px.png')),
                 
              ],
            ),
          )
      ),
    );
  }
  
}