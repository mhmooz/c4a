import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BMI_RESULT extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;
  BMI_RESULT({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 29, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 29, 49),
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "Age : $age",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "BMI COUNT : $result",
              style: TextStyle(color: Colors.white, fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
