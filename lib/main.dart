// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_animation_tutorial/example_eight.dart';
import 'package:flutter_animation_tutorial/example_five.dart';
import 'package:flutter_animation_tutorial/example_four.dart';
import 'package:flutter_animation_tutorial/example_nine.dart';
import 'package:flutter_animation_tutorial/example_one.dart';
import 'package:flutter_animation_tutorial/example_seven.dart';
import 'package:flutter_animation_tutorial/example_six.dart';
import 'package:flutter_animation_tutorial/example_three.dart';
import 'package:flutter_animation_tutorial/example_two_circle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
       scaffoldBackgroundColor: Colors.black
      ),
      // home: DayOneTutorial(),
      // home: CircularTwoColorCircle(),
      home: ExampleThreeCode(),
      // home: ExampleCodeFour(),
      // home: ExampleCodeFive(),
      // home: ExampleSixCode(),
      // home: ExampleCodeSeven(),
      // home: ExampleCodeEight(),
      // home: ExampleCodeNine(),
      
    );
  }
}

