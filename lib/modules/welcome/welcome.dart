import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To The App",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
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
        onPressed: () {
          Navigator.pushNamed(context, '/users_data');
        },
        backgroundColor: Colors.blueGrey,
        child: Text(
          'USERS',
          style: TextStyle(fontSize: 11),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/messenger');
                },
                child: const Text("Messenger",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text("Login",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 400,
              height: 60,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.deepPurple),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/simplecounter');
                },
                child: const Text("Simple Counter",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 6, 29, 49),
                      ),
                      child: IconButton(
                        iconSize: 60,
                        color: Colors.white,
                        highlightColor: Colors.blueGrey,
                        hoverColor: Colors.blueGrey,
                        onPressed: () {
                          Navigator.pushNamed(context, '/bmical');
                        },
                        icon: Icon(
                          Icons.boy_rounded,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, "/bmical"),
                      child: Text(
                        'BMI CALCULATOR',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
