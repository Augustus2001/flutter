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
        appBar: AppBar(
          title: Text('apple_calucator'),
          backgroundColor: Color.fromARGB(255, 200, 23, 11),
        ),
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
  // collect data of input
  TextEditingController apple_numb = new TextEditingController();
  TextEditingController price = new TextEditingController();
  TextEditingController show = new TextEditingController();
  //show
  @override
  void initState() {
    super.initState();
    show.text = "quantity=x ,price per 1 =x bath, pric=x bath";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(children: [
                Image.asset("assets/320px-Newton's-apple.jpg", width: 200),
                Text('calculator'),
                TextField(
                  controller: apple_numb,
                  decoration: InputDecoration(
                    labelText: 'numb of apple',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    labelText: 'price per 1',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      var result = double.parse(apple_numb.text) *
                          double.parse(price.text);
                      var price1 = double.parse(price.text);
                      var quantity = int.parse(apple_numb.text);
                      print("quantity=$quantity");
                      print("Price=$result");
                      //show show.txt
                      setState(() {
                        show.text =
                            "quantity=$quantity ,price per 1 =$price1 bath, price=$result bath";
                      });
                    },
                    child: Text("calculate"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(50, 20, 50, 20)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30)),
                    )),
                Text(
                  show.text,
                  style: TextStyle(fontSize: 20),
                )
              ])),
        ],
      )
    ]);
  }
}
