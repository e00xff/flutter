import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Buttons'),
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
  String _textValue = 'ElevatedButton';

  void _clickBtn1() {
    setState(() {
      _textValue = 'Button 1 was clicked';
    });
  }

  void _clickBtn2() {
    setState(() {
      _textValue = 'Button 2 was clicked';
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
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(_textValue),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: _clickBtn1,
                child: const Text('Button 1'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: _clickBtn2,
                child: const Text('Button 2'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const ElevatedButton(
                onPressed: null,
                child: Text('Button 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
