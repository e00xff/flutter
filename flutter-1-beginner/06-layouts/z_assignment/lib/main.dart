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
  List _pets = ['Dogs', 'Cats', 'Fish', 'Birds', 'Lizards'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[

                const Text('Available Pets'),
                Expanded(
                  child: ListView.builder(
                      itemCount: _pets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(_pets.elementAt(index));
                      }),
                ),
                
              ],
            ),
          )),
    );
  }
}
