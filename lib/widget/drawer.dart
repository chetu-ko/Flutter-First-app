import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawer(BuildContext context) {
  return BounceInDown(
    duration: Duration(seconds: 1),
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xFFFFFFFF),
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.red),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/first');
            },
          ),
          ListTile(
            leading: Icon(Icons.speaker_notes, color: Colors.red),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/second');
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page, color: Colors.red),
            title: Text('Contact'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/third');
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback, color: Colors.red),
            title: Text('Feedback'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/four');
            },
          ),
        ],
      ),
    ),
  );
}
