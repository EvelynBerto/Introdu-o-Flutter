import 'package:flutter/material.dart';
import 'package:introducao_flutter/home_page.dart';
import 'package:introducao_flutter/singleton.dart';

import 'home_page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var s1 = Singleton.instance;
    s1.id = 10;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        primarySwatch: Colors.red,
      ),
      routes:{
        '/': (context) => HomePage(),
        '/stateful': (context) => HomePageStateFul(),
      }
    );
  }
}

