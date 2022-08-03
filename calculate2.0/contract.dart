import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ConcatPage extends StatefulWidget {
  // const ConcatPage({Key? key}) : super(key: key);

  @override
  State<ConcatPage> createState() => _ConcatPageState();
}

class _ConcatPageState extends State<ConcatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Text("August"),
              Text("09xx-xxx-xxx"),
            ],
          ),
        )
      ],
    );
  }
}
