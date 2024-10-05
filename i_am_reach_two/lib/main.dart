import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IAmReachMyWidget(),
    ),
  );
} // End Of Main

class IAmReachMyWidget extends StatelessWidget {
  const IAmReachMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[600],
        // floatingActionButtonLocation: FloatingActionButtonLocation.center,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.amber,
            onPressed: () => exit(0),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          toolbarHeight: 75.5,
          elevation: 15,
          shadowColor: Colors.blueGrey[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          title: Text(
            'Make Me Reach!!!',
            style: TextStyle(
              color: Colors.yellow[600],
            ),
          ),
        ),
      ),
    );
  }
}
