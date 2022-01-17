import 'package:flutter/material.dart';
import 'package:flutter_test_1/shared/menu_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the ButtonCounter object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text(('Home'),
                style: TextStyle(color: Colors.indigo, fontSize: 50))),
        body: const Center(child: FlutterLogo()),
        drawer: const MenuDrawer());
  }
}
