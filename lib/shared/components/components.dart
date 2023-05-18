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
        onPressed: function(),
        child: Text(isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(color: fontColor, fontSize: fontsize)),
      ),
    );

Widget defaultFormField({
  required String hintText,
  required TextInputType keyboardType,
  required Function validate,
  required Icon prefix,
  bool isPassword = false,
  bool enable_Suggestion = false,
  bool auto_correct = false,
  Color hint_color = Colors.black,
  Color fillColor = const Color.fromARGB(255, 187, 162, 230),
  double radius = 25,
  bool filled = true,
}) =>
    TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hint_color),
          prefixIcon: prefix,
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye))
              : null,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
          filled: filled,
          fillColor: fillColor),
      validator: validate(),
      enableSuggestions: enable_Suggestion,
      autocorrect: auto_correct,
      keyboardType: keyboardType,
      obscureText: isPassword ? true : false,
    );
