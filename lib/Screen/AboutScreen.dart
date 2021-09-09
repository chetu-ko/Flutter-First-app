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
          color: Colors.lightBlue,
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
                      Container(
                          height: 150,
                          alignment: Alignment.bottomCenter,
                          child: Card(
                            child: Text(
                              "Here I started learning the flutter developemnt, After the complete understanding of documentation this is my first app.",
                              // maxLines: 2,
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
