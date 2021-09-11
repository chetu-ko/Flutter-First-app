import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/utils/url_launcher.dart';
import 'package:myapp/widget/drawer.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
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
                      "+91 8095211328",
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
                      "Karnataka, India",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Urllauncher().launchInBrowser(
                                    "https://github.com/chetu-ko");
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                size: 20,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "My Github",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Urllauncher().makePhoneCall("8095211328");
                              },
                              icon: FaIcon(FontAwesomeIcons.phone,
                                  size: 20, color: Colors.red),
                            ),
                            Text(
                              "Reach Me",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Urllauncher().launchInBrowser(
                                    "https://www.linkedin.com/in/chetan-koppal-627a96176/");
                              },
                              icon: FaIcon(FontAwesomeIcons.linkedin,
                                  size: 20, color: Colors.red),
                            ),
                            Text(
                              "Linkedin",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
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
