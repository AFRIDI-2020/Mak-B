import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  double? height, width;
  String? message;
  Function() onPressed;

  GradientButton(
      {this.height, this.width, this.message, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(20),
      width: width,
      height: height,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0198DD),Color(0xFF19B52B)],
        ),
        // new RadialGradient(
        //   radius: 4,
        //   focalRadius: 3,
        //   colors: [Color(0xFF19B52B),Color(0xFF0861AF), Color(0xFF0198DD)],
        // ),
      ),
      child: FlatButton(
        onPressed: () => onPressed,
        child: new Text(
          message!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
