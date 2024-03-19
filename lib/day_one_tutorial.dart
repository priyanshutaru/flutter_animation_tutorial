// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'dart:math' show pi;

class DayOneTutorial extends StatefulWidget {
  const DayOneTutorial({super.key});

  @override
  State<DayOneTutorial> createState() => _DayOneTutorialState();
}

class _DayOneTutorialState extends State<DayOneTutorial>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3),);

        _animation = Tween<double>(begin: 1,end: 2 * pi).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
    );
  }
}
