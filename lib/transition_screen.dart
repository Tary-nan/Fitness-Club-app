import 'dart:math';

import 'package:flutter/material.dart';

class WhitePageRoute extends PageRouteBuilder {
  final Widget enterPage;

  WhitePageRoute({required this.enterPage})
      : super(
            transitionDuration: const Duration(milliseconds: 2000),
            pageBuilder: (context, animation, secondaryAnimation) => enterPage,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var fadeIn = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                      curve: const Interval(.7, 1), parent: animation));
              var fadeOut = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                      curve: const Interval(0, .2), parent: animation));
              return Stack(children: <Widget>[
                FadeTransition(
                    opacity: fadeOut, child: Container(color: Colors.white70)),
                FadeTransition(opacity: fadeIn, child: child)
              ]);
            });
}

class Rotation3d extends StatelessWidget {
  //Degrees to rads constant
  static const double degrees2Radians = pi/180;

  final Widget child;
  final double rotationX;
  final double rotationY;
  final double rotationZ;

  const Rotation3d({Key? key, required this.child, this.rotationX=0, this.rotationY=0, this.rotationZ=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(rotationX * degrees2Radians)
          ..rotateY(rotationY * degrees2Radians)
          ..rotateZ(rotationZ * degrees2Radians),
        child: child);
  }
}