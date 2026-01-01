import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'Zihadul Islam';
int number = 1;
double num = 1.7;
List myList = ['String', 'sdkojlk'];
Map<String, dynamic> myMap = {'String': 'String', 'String2': 4444};

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // wrap with container
        // Right click on any weiget => refactor => wrap with container
        child: Container(
          margin: EdgeInsets.all(50.0),
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(color: Colors.red),

          // container
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(201, 14, 189, 81),
            ),

            child: (Text(
              "hello",
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 244)),
            )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
