import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/Screen/FeedAddScreen.dart';
import 'package:myapp/Screen/splashscreen.dart';
import 'package:myapp/bloc/feedbloc/feedbloc_bloc.dart';

import 'Screen/AboutScreen.dart';
import 'Screen/FeedbackScreen.dart';
import 'Screen/ContactScreen.dart';
import 'Hompage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedblocBloc>(
            create: (BuildContext context) => FeedblocBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'World Wonders',
        theme: ThemeData(primarySwatch: Colors.red),
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => Splashscreen(),
          '/first': (context) => FirstScreen(),
          '/second': (context) => AboutScreen(),
          '/third': (context) => ContactScreen(),
          '/four': (context) => FeedbackScreen(),
          '/fifth': (context) => AddFeed(),
        },
      ),
    );
  }
}
