import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = 200,
  double height = 60,
  bool isUpperCase = true,
  double fontsize = 30,
  Color fontColor = Colors.white,
  Color backgroundColor = Colors.purple,
  double radius = 25,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: backgroundColor),
      child: MaterialButton(
        onPressed:function(),
        child: Text(isUpperCase ? text.toUpperCase() :text,
            style: TextStyle(color: fontColor, fontSize: fontsize)),
      ),
    );
