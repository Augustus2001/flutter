import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('calucator')),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController Quanity = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();
  @override
  void initState() {
    super.initState();
    result.text = "ผล*ผลละ30=...บาท";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Image.asset("assets/320px-Newton's-apple.jpg", width: 200),
      Text('calculator'),
      TextField(
        decoration: InputDecoration(
            labelText: 'numb of apple', border: OutlineInputBorder()),
      )
    ]));
  }
}
