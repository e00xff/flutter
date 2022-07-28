import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // ElevatedButton (RaisedButton - old widget)
  String _textValue = 'Please click the button';
  void _clickMe() {
    setState(() {
      _textValue = 'Button was clicked';
    });
  }

  // TextButton (FlatButton - old widget)
  String _timeValue = 'Current Time';
  void _onPressed() {
    setState(() {
      _timeValue = DateTime.now().toString();
    });
  }

  // Icon button
  int _numberValue = 0;

  void _add(){
    setState(() {
      _numberValue++;
    });
  }

  void _subtract() {
    setState(() {
      _numberValue--;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // ElevatedButton (RaisedButton - old widget)
            Text(_textValue),
            Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: _clickMe,
                child: const Text('This is ElevatedButton'),
              ),
            ),

            // ElevatedButton with parameters


            // TextButton (FlatButton - old widget)
            Text(_timeValue),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                onPressed: _onPressed,
                child: const Text('What time is it now?'),
              ),
            ),

            // Icon button
            Text('Number value is: ${_numberValue}'),
            IconButton(onPressed: _add, icon: const Icon(Icons.add)),
            IconButton(onPressed: _subtract, icon: const Icon(Icons.remove))

            

          ],
        ),
      ),
    );
  }
}
