import 'package:flutter/material.dart';
import 'package:interview/src/qn1/answer.dart' as qn1;
import 'package:interview/src/qn2/answer.dart' as qn2;
import 'package:interview/src/qn3/answer.dart' as qn3;
import 'package:interview/src/qn5/answer.dart' as qn5;
import 'package:interview/src/qn6/answer.dart' as qn6;
import 'package:interview/src/data/menu.dart';
import 'package:interview/src/datatypes/menu.dart';

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
  int _counter = 0;

  Menu menu = qn1.answer();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
            ListView.builder(
              itemCount: qn1.answer().menuItems.length,
                itemBuilder: (context, index) {
                var data = qn1.answer().menuItems[index];
                return ListTile(
                  title: Text(data.name),
                  subtitle: Text(data.price.toString()),
                );
                }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
