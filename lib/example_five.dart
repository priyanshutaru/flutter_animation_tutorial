import 'package:flutter/material.dart';



class ExampleCodeFive extends StatefulWidget {
  const ExampleCodeFive({Key? key}) : super(key: key);

  @override
  State<ExampleCodeFive> createState() => _ExampleCodeFiveState();
}

const defaultWidth = 100.0;

class _ExampleCodeFiveState extends State<ExampleCodeFive> {
  var _isZoomedIn = false;
  var _buttonTitle = 'Zoom In';
  var _width = defaultWidth;
  var _curve = Curves.bounceOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(
                  milliseconds: 370,
                ),
                width: _width,
                curve: _curve,
                child: Image.asset(
                  'assets/images/wallpaper.jpg',
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _isZoomedIn = !_isZoomedIn;
                _buttonTitle = _isZoomedIn ? 'Zoom Out' : 'Zoom In';
                _width = _isZoomedIn
                    ? MediaQuery.of(context).size.width
                    : defaultWidth;
                _curve = _isZoomedIn ? Curves.bounceInOut : Curves.bounceOut;
              });
            },
            child: Text(
              _buttonTitle,
            ),
          ),
        ],
      ),
    );
  }
}