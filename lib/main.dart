import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IAmReachMyWidget(),
    ),
  );
} // End Of Main

class IAmReachMyWidget extends StatefulWidget {
  const IAmReachMyWidget({super.key});

  @override
  State<IAmReachMyWidget> createState() => _IAmReachMyWidget();
}

class _IAmReachMyWidget extends State<IAmReachMyWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[600],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
        body: Center(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 14.0,
            runSpacing: 4.0,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            children: [
              const Image(
                width: 326,
                height: 326,
                alignment: Alignment.center,
                fit: BoxFit.contain,
                image: AssetImage(
                  'lib/images/diamondMainPicture.png',
                ),
                semanticLabel:
                    'An Image Of A Real Diamonds Which Is Our Goal!!',
              ),
              const Text(
                'Tap The Diamond Button!',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'Number Of Receive Diamonds: $counter',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                counter++;
              },
            );
          },
          backgroundColor: Colors.black,
          elevation: 15,
          tooltip: 'Press Diamond Button To Get More Diamonds',
          enableFeedback: true,
          hoverElevation: 0,
          child: const Icon(
            Icons.diamond_rounded,
            color: Colors.yellow,
            semanticLabel: 'an icon of a daimon',
          ),
        ),
      ),
    );
  }
}
