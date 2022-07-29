import 'package:flutter/material.dart';
import 'dart:async';

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

  // 1. TextField
  String _value = '';

  void _onChange(String value) {
    setState(()  {
      _value = 'Change: ${value}';
    });
  }

  void _onSubmit(String value) {
    setState(() { 
      _value = 'Submited: ${value}';
    });
  }

  // 2. Checkbox
  bool _value1 = false;
  bool _value2 = false;

  void _value1Checked(bool? value1) {
    if(value1 != null) {
      setState(() {
        _value1 = value1;
      });
    }
  }

  void _value2Checked(bool? value2) {
    setState(() {
      _value2 = value2 ?? true;
    });
  }


  // 3. Radios
  int _numValue1 = 0;
  int _numValue2 = 0;

  // void _setNumValue1(int? numValue) => setState(() => { _numValue1 = numValue });
  // void _setNumValue2(int? numValue) => setState(() => { _numValue2 = numValue });

  void _setNumValue1(int? numValue) {
    setState(() {
      if(numValue != null) {
        _numValue1 = numValue;
      }
    });
  }

  void _setNumValue2(int? numValue) {
    setState(() {
      if(numValue != null) {
        _numValue2 = numValue;
      }
    });
  }

  Widget makeRadios() {
    List<Widget> list = [];

    for(int i = 0; i < 3; i++) {
      list.add(Radio(value: i, groupValue: _numValue1, onChanged: _setNumValue1));
    }

    Column column = Column(children: list);
    return column;
  }

  Widget makeRadiosTiles() {
    List<Widget> list = [];

    for(int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i, 
        groupValue: _numValue2, 
        onChanged: _setNumValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text('Item ${i}'),
        subtitle: const Text('abc'),
      ));
    }

    Column column = Column(children: list);
    return column;
  }


  // 4. Switches
  bool _switchValue1 = false;
  bool _switchValue2 = false;

  void _switchOnChanged1(bool? value) {
    if(value != null) {
      setState(() {
        _switchValue1 = value;
      });
    }
  }

  void _switchOnChanged2(bool? value) {
    if(value != null) {
      setState(() {
        _switchValue2 = value;
      });
    }
  }


  // 5. Slider
  double _sliderValue = 0.0;

  void _setSliderValue(double? value) {
    if(value != null) {
      setState(() {
        _sliderValue = value;
      });
    }
  }

  // 6. Date Picker
  String _datePickerValue = '';

  Future _selectDate() async {

    // DateTime? picked = await showDatePicker(
    //   context: context, 
    //   initialDate: new DateTime.now(), 
    //   firstDate: new DateTime(2016), 
    //   lastDate: new DateTime(2020)
    // );

    var currentDateTime = DateTime.now().toString();
    int currentYear = DateTime.parse(currentDateTime).year;
    int lastYear = currentYear - 1;
    int nextYear = currentYear + 1;
    print('Current DateTime: ${currentDateTime}');
    print('Current Year: ${currentYear}');
    print('Last Year: ${lastYear}');
    print('Next Year: ${nextYear}');
    
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(lastYear),
      lastDate: new DateTime(nextYear),
    );

    if(picked != null) {
      setState(() {
        _datePickerValue = picked.toString();
      });
    }
  }

  // 7. Final Lab
  String _labTextValue = '';
  String _labTextDisplay = 'Add widget here';

  void _labOnChange(String value) {
    if(value != null) {
      setState(() {
        _labTextValue = value;
      });
    }
  }

  void _labOnClicked() {
    setState(() {
      _labTextDisplay = _labTextValue;
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
          children: <Widget> [

            // 1. TextField
            Text(_value),
            TextField(
              decoration: const InputDecoration(
                labelText: "Hello",
                hintText: 'Hint',
                icon: Icon(Icons.people)
              ),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _onChange,
              onSubmitted: _onSubmit,
            ),

            // 2. Checkbox
            Checkbox(value: _value1, onChanged: _value1Checked),
            CheckboxListTile(
              value: _value2, 
              onChanged: _value2Checked,
              title: const Text('Hello World'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: const Text('subtitle'),
              secondary: const Icon(Icons.archive),
              activeColor: Colors.red,
            ),

            // 3. Radios
            makeRadios(),
            makeRadiosTiles(),

            // 4. Switch
            Switch(value: _switchValue1, onChanged: _switchOnChanged1),
            SwitchListTile(
              value: _switchValue2, 
              onChanged: _switchOnChanged2,
              title: const Text(
                'Hello World', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.red,
                ),
              ),
            ),

            // 5. Slider
            Text('Slider value: ${(_sliderValue * 100).round()}'),
            Slider(value: _sliderValue, onChanged: _setSliderValue),

            // 6. Date Picker
            Text(_datePickerValue),
            ElevatedButton(onPressed: _selectDate, child: const Text('click me')),


            // 7. Final Lab
            Text(_labTextDisplay),
            TextField(onChanged: _labOnChange),
            ElevatedButton(
              onPressed: _labOnClicked, 
              child: const Text('Click me'),
            ),


          ],
        ),
      ),
    );
  }
}
