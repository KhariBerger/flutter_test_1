import 'package:flutter/material.dart';
import 'package:flutter_test_1/pages/home_page.dart';
import 'package:flutter_test_1/shared/button_counter.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test 1',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/increment': (context) =>
            const ButtonCounter(title: 'Counter++', increment: true),
        '/decrement': (context) =>
            const ButtonCounter(title: 'Counter--', increment: false)
      },
      initialRoute: '/',
    );
  }
}
