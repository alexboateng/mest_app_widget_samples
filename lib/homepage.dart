// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const textStyle = TextStyle(fontSize: 30, color: Colors.white);
  List<String> data = [
    "Kwame",
    "abena",
    "Adwoa",
    "Afua",
    "Kwame",
    "abena",
    "Adwoa",
    "Afua",
    "Kwame",
    "abena",
    "Adwoa",
    "Afua",
    "Kwame",
    "abena",
    "Adwoa",
    "Afua"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int pos) {
            return _listItem(pos);
          }),
    );
  }

  Widget _listItem(int pos) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: Colors.red,
      child: Text(
        data[pos],
        style: textStyle,
      ),
    );
  }
}

// Container(
//         width: MediaQuery.of(context).size.width,
//         height: 400,
//         color: Colors.red,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Hello1",
//               style: textStyle,
//             ),
//             Text(
//               "Hello2",
//               style: textStyle,
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.white,
//                 child: Text(
//                   "Hello3",
//                   style: textStyle,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
