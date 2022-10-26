import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  final List<String> myTulisan = ["Tulisan 1", "Tulisan 2", "Tulisan 3"];
  final List<Color> myColor = [
    Colors.red,
    Colors.yellow,
    Colors.black12,
  ];
  final List<Widget> myList = [
    Container(
      height: 300,
      width: 300,
      color: Colors.red,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.yellowAccent,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blueGrey,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('List View'),
          ),
          body: ListView.separated(
              separatorBuilder: (context, index) {
                return Text(myTulisan[index]);
              },
              itemCount: myColor.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: myColor[index],
                );
              })),
    );
  }
}
