import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final List<Container> myList = List.generate(
    90, 
    (index) {
      return Container(
        height: 50,
        width: 150,
        color: const Color.fromARGB(255, 163 , 156 , 183),
      )
    })
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("shadam muhari"),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          children: myList,
          ),
      ),
    );
  }
}
