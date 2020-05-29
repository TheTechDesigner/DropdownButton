import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'DropDownButton';
  String _friendsVal;
  List _friendsName = [
    'David',
    'John',
    'Michael',
    'Sam',
    'Lucas',
    'Adward',
    'Smith'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: DropdownButton(
              hint: Text('Select Name'),
              dropdownColor: Colors.grey,
              elevation: 5,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36.0,
              isExpanded: true,
              value: _friendsVal,
              style: TextStyle(color: Colors.black, fontSize: 22.0),
              onChanged: (value) {
                setState(() {
                  _friendsVal = value;
                });
              },
              items: _friendsName.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
