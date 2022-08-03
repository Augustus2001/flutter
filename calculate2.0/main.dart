import 'package:calculate/pages/calc.dart';
import 'package:calculate/pages/contract.dart';
import 'package:calculate/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    CalculatePage(),
    ConcatPage()
  ]; //เก็บค่าหลายคค่าโดยเริ่มนับจาก 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('apple_calucator'),
        backgroundColor: Color.fromARGB(255, 200, 23, 11),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculate"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Concat")
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
