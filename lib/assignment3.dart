import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedAlign].



class assignment3 extends StatelessWidget {
  const assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedAlign Sample')),
        body: const AnimatedAlignExample(),
      ),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Color.fromARGB(85, 56, 236, 152),
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}