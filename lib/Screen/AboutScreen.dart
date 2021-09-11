import 'package:flutter/material.dart';
import 'package:myapp/widget/drawer.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.pink,
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person, size: 50),
                      Text(
                        "Name: Chetan Koppal",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Education: Graduated Computer science engineer",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Hi, I am flutter developer, started my flutter jounrey on feb 2021."
                            "I am skilled in handling firebase auth, Firebase firestore, Firebase dynamic link basics "
                            "and firebase storage. Experience of mobx and Bloc state management concepts."
                            "I am learner, very eager to learn the flutter and work on it...",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
