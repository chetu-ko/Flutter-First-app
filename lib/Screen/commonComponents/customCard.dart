import 'package:flutter/material.dart';
import 'package:myapp/widget/task.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.title, this.description});

  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Name:  $title"),
              FlatButton(
                child: Text("See More"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TaskPage(title, description: description),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
