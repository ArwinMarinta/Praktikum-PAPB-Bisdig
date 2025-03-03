import 'package:flutter/material.dart';
import 'package:praktikum_1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "1",
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800),
            ),
            Text(
              "2",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            Text("3")
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: const BoxDecoration(color: Colors.red),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Navigasi1"),
            SizedBox(
              width: 10.0,
            ),
            Text("Navigasi2"),
            SizedBox(
              width: 10.0,
            ),
            Text("Navigasi3"),
          ],
        ),
      ),
    );
  }
}
