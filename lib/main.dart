import 'package:flutter/material.dart';

void main() {
  runApp(MessageCard());
}

class MessageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController mycontroller = TextEditingController();
  String msge = "";
  Color themecolor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('message card App'),
        backgroundColor: themecolor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 250,
              color: themecolor,
              child: Center(
                child: Text(
                  msge,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: mycontroller,
              maxLength: 30,
              onChanged: (String newValue) {
                setState(() {
                  msge = newValue;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3.0, color: themecolor)),
                  labelText: "Write a message",
                  helperText: "You can write your message here!",
                  prefixIcon: Icon(
                    Icons.edit,
                    color: themecolor,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: themecolor,
              onPressed: () {
                mycontroller.clear();
              },
              child: Text(
                'Clear the text',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.red;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    onTap: () {
                      setState(() {
                        themecolor = Colors.blue;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.pink;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themecolor = Colors.green;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
