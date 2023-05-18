import 'package:c4a/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
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
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
      body: Column(
        children: [
          defaultFormField(hintText: 'Username', keyboardType: TextInputType.text, validate: (){}, prefix: Icon(Icons.man)),
          SizedBox(
            height: 20,
          ),
          defaultFormField(hintText: 'Email', keyboardType: TextInputType.emailAddress, validate: (){}, prefix: Icon(Icons.email)),
          SizedBox(height: 20),
          defaultFormField(hintText: 'Password', keyboardType: TextInputType.visiblePassword, validate: (){}, prefix: Icon(Icons.lock),isPassword: true),
          SizedBox(
            height: 20,
          ),
          defaultButton(function: () {}, text: 'sign up')
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
