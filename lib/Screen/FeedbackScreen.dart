import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/Screen/commonComponents/customCard.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FeedbackScreen> {
  TextEditingController name;
  TextEditingController message;

  @override
  initState() {
    name = new TextEditingController();
    message = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return new ListView(
                      children:
                          snapshot.data.docs.map((DocumentSnapshot document) {
                        return new CustomCard(
                          title: document['title'],
                          description: document['description'],
                        );
                      }).toList(),
                    );
                }
              },
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  _showDialog() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    await showDialog<String>(
      context: context,
      builder: (context) {
        //children: <Widget>[
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16.0),
          content: Column(
            children: <Widget>[
              Text("Please fill all fields to create a new task"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: 'name*'),
                  controller: name,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Feedback message*'),
                  controller: message,
                ),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  name.clear();
                  message.clear();
                  Navigator.pop(context);
                }),
            FlatButton(
                child: Text('Add'),
                onPressed: () {
                  if (name.text.isNotEmpty && message.text.isNotEmpty) {
                    return users
                        //.collection('tasks')
                        .add({"title": name.text, "description": message.text})
                        .then((result) => {
                              Navigator.pop(context),
                              name.clear(),
                              message.clear(),
                            })
                        .catchError((err) => print(err));
                  } else {
                    print('please enter input');
                  }
                })
          ],
        );
      },
    );
  }
}
