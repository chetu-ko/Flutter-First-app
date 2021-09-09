import 'package:flutter/material.dart';

Widget floatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      Navigator.pop(context);
      //Navigator.pushNamed(context, '/first');
      Navigator.pushNamed(context, '/fifth');
    },
    child: Icon(
      Icons.add_photo_alternate,
      color: Colors.white,
    ),
  );
}
