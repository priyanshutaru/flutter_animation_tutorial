import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}



class CircleClipper extends CustomClipper<Path> {
  const CircleClipper();

  @override
  Path getClip(Size size) {
    var path = Path();

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    path.addOval(rect);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
0xFFFFFFFF
A R G B = 32 bits
  A = Alpha (0 - 255) - 8 bits
  R = Red (0 - 255) - 8 bits
  G = Green (0 - 255) - 8 bits
  B = Blue (0 - 255) - 8 bits
*/

Color getRandomColor() => Color(
      0xFF000000 +
          math.Random().nextInt(
            0x00FFFFFF,
          ),
    );

class ExampleSixCode extends StatefulWidget {
  const ExampleSixCode({Key? key}) : super(key: key);

  @override
  State<ExampleSixCode> createState() => _ExampleSixCodeState();
}

class _ExampleSixCodeState extends State<ExampleSixCode> {
  var _color = getRandomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: const CircleClipper(),
          child: TweenAnimationBuilder(
            tween: ColorTween(
              begin: getRandomColor(),
              end: _color,
            ),
            onEnd: () {
              setState(() {
                _color = getRandomColor();
              });
            },
            duration: const Duration(seconds: 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
            builder: (context, Color? color, child) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(
                  color!,
                  BlendMode.srcATop,
                ),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}