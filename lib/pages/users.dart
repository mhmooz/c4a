import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: empty_constructor_bodies
class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.name,
    required this.phone,
    required this.id,
  });
}

class Usersdata extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: "ahmed mansour",
      phone: '0988305062',
    ),
    UserModel(
      id: 2,
      name: "jamal kamel mansour",
      phone: '4545454545',
    ),
    UserModel(
      id: 1,
      name: "dalia sdjkshur",
      phone: '656556',
    ),
    UserModel(
      id: 1,
      name: "kahled dhsdsansour",
      phone: '4878788878',
    ),
    UserModel(
      id: 1,
      name: "ahmed mansour",
      phone: '0988305062',
    ),
    UserModel(
      id: 2,
      name: "jamal kamel mansour",
      phone: '4545454545',
    ),
    UserModel(
      id: 1,
      name: "dalia sdjkshur",
      phone: '656556',
    ),
    UserModel(
      id: 1,
      name: "kahled dhsdsansour",
      phone: '4878788878',
    ),
    UserModel(
      id: 1,
      name: "ahmed mansour",
      phone: '0988305062',
    ),
    UserModel(
      id: 2,
      name: "jamal kamel mansour",
      phone: '4545454545',
    ),
    UserModel(
      id: 1,
      name: "dalia sdjkshur",
      phone: '656556',
    ),
    UserModel(
      id: 1,
      name: "kahled dhsdsansour",
      phone: '4878788878',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('The Users Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
            itemBuilder: (context, index) => buildusersdata(users[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[400],
                ),
            itemCount: users.length),
      ),
    );
  }

  Widget buildusersdata(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("${user.id}"),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${user.name}",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                Text(
                  "${user.phone}",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
