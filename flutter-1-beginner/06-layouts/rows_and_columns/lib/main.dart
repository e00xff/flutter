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

  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();

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

                const Text('Please login'),
                Row(children: <Widget>[
                     const Text('Username: '),
                     Expanded(child: TextField(controller: _user,),),
                   ],),
                Row(children: <Widget>[
                     const Text('Password: '),
                     Expanded(child: TextField(controller: _pass,),),
                   ],),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(onPressed: () => { print('hello ${_user.text}') }, child: const Text('Click me'),),
                ),
                
              ],
            ),
          )
      ),
    );
  }
  
}