import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test_1/services/auth_service.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          elevation: 0.0,
          title: const Text('Login'),
        ),
        body: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: ElevatedButton(
                child: const Text('Login Anonymously'),
                onPressed: () async {
                  dynamic result = await _auth.signInAnonymously();

                  if (result == null) {
                    if (kDebugMode) {
                      print('Error Logging in :(');
                    }
                  } else {
                    if (kDebugMode) {
                      print('Successful Login');
                      print('Result: ' + result.toString());
                    }
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/');
                  }
                })));
  }
}
