import 'package:c4a/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();

  final username_controller = TextEditingController();

  final email_controller = TextEditingController();

  final pass_controller = TextEditingController();
  bool isPassword = true;

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
        body: Form(
          key: formKey,
          child: Column(
            children: [
              defaultFormField(
                  controller: email_controller,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  validat: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Email Must Not Be Empty';
                    }
                    return null;
                  },
                  prefix: Icon(Icons.email)),
              SizedBox(height: 20),
              defaultFormField(
                  suffix: Icon(Icons.remove_red_eye),
                  suffixPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  prefix: Icon(Icons.lock),
                  controller: pass_controller,
                  isPassword: isPassword,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  validat: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Password is too short';
                    }
                    return null;
                  }),
              SizedBox(height: 20),
              defaultButton(
                  function: () {
                    if (formKey.currentState!.validate()) {}
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
