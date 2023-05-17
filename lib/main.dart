import 'package:c4a/pages/BMI%20CALCULATOR/bmi_cal.dart';
import 'package:c4a/pages/login.dart';
import 'package:c4a/pages/messenger.dart';
import 'package:c4a/pages/simple_counter.dart';
import 'package:c4a/pages/singup.dart';
import 'package:c4a/pages/users.dart';
import 'package:c4a/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Welcome(),
      '/login': (context) => const LogIn(),
      '/signup': (context) => const SignUp(),
      '/messenger': (context) => const Messenger(),
      '/users_data': (context) => Usersdata(),
      '/simplecounter': (context) => SimpleCounter(),
      '/bmical':(context)=> BmiCalculator(),
    });
  }
}
