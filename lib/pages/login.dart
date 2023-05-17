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
              TextField(
                decoration: const InputDecoration(
                  hintText: "Your Email:",
                  hintStyle: TextStyle(color: Colors.black45),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  filled: true,
                  fillColor: Color.fromARGB(255, 187, 162, 230),
                ),
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Your Password:",
                  hintStyle: TextStyle(color: Colors.black45),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  filled: true,
                  fillColor: Color.fromARGB(255, 187, 162, 230),
                ),
                enableSuggestions: false,
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.purple),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
