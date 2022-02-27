import 'package:flutter/material.dart';
import 'package:flutter_test_1/main.dart';
import 'package:flutter_test_1/pages/authentication/authenticate.dart';
import 'package:flutter_test_1/pages/home_page.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Return Home or Authenticate widget
    if (loggedIn) {
      return const HomePage();
    } else {
      return const Authenticate();
    }
  }
}
