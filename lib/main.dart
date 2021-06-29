import 'package:flutter/material.dart';
import 'package:week2/MyHomePage.dart';
void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int counter=0;
  @override
  void initState() {
    super.initState();
    counter = counter + 0;
  }
  void _decrementCounter(_) {
    setState(() {
      counter--;
      print('decrement: $counter');
    });
  }
  
  void _incrementCounter(_) {
    setState(() {
      counter++;
      print('increment: $counter');
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter state and network Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
        backgroundColor: Colors.black
      ),
      home: new MyHomePage(
        title: 'My Home Page',
        counter: counter,
        decrementCounter: _decrementCounter,
        incrementCounter: _incrementCounter,
      ),
    );
  }
}