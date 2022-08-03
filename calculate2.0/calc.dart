import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  // const CalculatePage({Key? key}) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
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
