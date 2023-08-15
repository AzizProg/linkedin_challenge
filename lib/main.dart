import 'package:flutter/material.dart';
import 'package:linkedin_challenge/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFFbe3455)),
        useMaterial3: true,
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
  bool transition = false;

  void _switch() {
    setState(() {
      transition = !transition;
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: transition
              ? AnimatedTextWidget(
                  text: "Aujoud'hui nous parlerons du widget 'MaterialApp'")
              : Text(
                  "Bienvenue",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _switch,
        tooltip: 'Increment',
        child: transition ? Icon(Icons.pause) : Icon(Icons.play_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
