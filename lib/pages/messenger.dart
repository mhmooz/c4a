import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/34.jpg'),
            radius: 15,
          ),
        ),
        title: Text(
          "Chats",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Color.fromARGB(255, 26, 26, 26),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
            color: Color.fromARGB(255, 26, 26, 26),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 110,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildStoriesItem(),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 20,
                              ),
                          itemCount: 7),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => buildChatItem(),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 20,
                            ),
                        itemCount: 10)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildStoriesItem() {
    return Container(
      width: 70,
      height: 100,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/34.jpg'),
                radius: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text('Mahmoud Hazmeh',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget buildChatItem() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/34.jpg'),
          radius: 30,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Osama Kheir",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
            Row(
              children: [
                Text(
                  "hello how are you my friend?",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sat",
                  style: TextStyle(color: Colors.grey[999]),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '10:24 am',
                  style: TextStyle(color: Colors.grey[900]),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
