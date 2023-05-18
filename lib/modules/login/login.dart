import 'package:c4a/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Log In",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              color: Colors.white,
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search), color: Colors.white)
          ],
          backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            Navigator.pop(context, '/');
          },
          child: Icon(Icons.home),
        ),
        body: Container(
          child: Column(
            children: [
              defaultFormField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  validate: () {},
                  prefix: Icon(Icons.email)),
              SizedBox(height: 20),
              defaultFormField(
                  isPassword: true,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  validate: () {},
                  prefix: Icon(Icons.lock)),
              SizedBox(
                height: 20,
              ),
              defaultButton(
                  function: () {
                    print("hi");
                  },
                  text: 'log in'),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
