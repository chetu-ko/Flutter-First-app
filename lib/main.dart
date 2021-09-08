import 'package:flutter/material.dart';

import 'Screen/AboutScreen.dart';
import 'Screen/FeedbackScreen.dart';
import 'Screen/ContactScreen.dart';
import 'Hompage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'World Wonders',
    theme: ThemeData(primarySwatch: Colors.red),
    initialRoute: '/first',
    routes: {
      '/first': (context) => FirstScreen(),
      '/second': (context) => AboutScreen(),
      '/third': (context) => ContactScreen(),
      '/four': (context) => FeedbackScreen(),
    },
  ));
}
