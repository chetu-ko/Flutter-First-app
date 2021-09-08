import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.pink,
          child: Container(
              height: 300,
              width: 300,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone, size: 20, color: Colors.red),
                    title: Text(
                      "+91 8090000000",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      size: 20,
                      color: Colors.red,
                    ),
                    title: Text(
                      "#00, 0 Main cross, aaa Street, bbbb city, india. 555555 ",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 20,
                          color: Colors.red,
                        ),
                        FaIcon(FontAwesomeIcons.facebook,
                            size: 20, color: Colors.red),
                        FaIcon(FontAwesomeIcons.linkedin,
                            size: 20, color: Colors.red),
                        FaIcon(FontAwesomeIcons.twitter,
                            size: 20, color: Colors.red),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
