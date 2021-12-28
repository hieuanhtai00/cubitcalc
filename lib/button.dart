import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RectangleButton extends StatelessWidget {
  String input = '';
  RectangleButton({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.grey,
      ),
      child: Center(
        child: Text(
          '$input',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  String input = '';
  CircleButton({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$input',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

RectangleButton butc = RectangleButton(input: 'C');
RectangleButton but$ = RectangleButton(input: '\$');
RectangleButton butpercent = RectangleButton(input: '%');
RectangleButton but7 = RectangleButton(input: '7');
RectangleButton but8 = RectangleButton(input: '8');
RectangleButton but9 = RectangleButton(input: '9');
RectangleButton but4 = RectangleButton(input: '4');
RectangleButton but5 = RectangleButton(input: '5');
RectangleButton but6 = RectangleButton(input: '6');
RectangleButton but1 = RectangleButton(input: '1');
RectangleButton but2 = RectangleButton(input: '2');
RectangleButton but3 = RectangleButton(input: '3');
RectangleButton but0 = RectangleButton(input: '0');
RectangleButton butdot = RectangleButton(input: '.');

CircleButton butdiv = CircleButton(input: '/');
CircleButton butsub = CircleButton(input: '-');
CircleButton butsum = CircleButton(input: '+');
CircleButton butmul = CircleButton(input: '*');
CircleButton butequal = CircleButton(input: '=');
