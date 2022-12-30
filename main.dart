import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tinder(),
    ),
  );
}

class Tinder extends StatefulWidget {
  const Tinder({Key? key}) : super(key: key);

  @override
  State<Tinder> createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  int profile = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 96, 96),
        title: Text("Tinder Profile"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            profile++;
          });
        },
        child: Icon(
          Icons.add_circle_sharp,
          size: 60,
          color: Colors.black45,
        ),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'D:\flutter bootcamp\assignmnet01(tinder profile)\atharva.jpg'),
              radius: 50.0,
            ),
            Divider(
              height: 80,
              color: Colors.black87,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Atharva Rustagi',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email : atharva04112002@gmail.com',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("I like to read books and surf the internet. ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ))
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
