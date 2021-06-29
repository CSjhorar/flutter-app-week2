import 'package:flutter/material.dart';
import 'package:week2/MySecondPage.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required  this.title,
    required this.counter,
    required this.decrementCounter,
    required this.incrementCounter
  }) : super(key: key);
  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  void _onPressed() {
    widget.incrementCounter(null);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new Text(
              widget.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            new ElevatedButton(
              child: new Text('Next Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MySecondPage(
                      widget.decrementCounter,
                      title: 'My Second Page',
                      counter: widget.counter,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}