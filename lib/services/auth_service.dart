import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test_1/main.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//Sign In Anonymously
  Future signInAnonymously() async {
    try {
      await Firebase.initializeApp();
      UserCredential result = await _auth.signInAnonymously();
      user = result.user;
      if (user != null) {
        loggedIn = true;
      }
      return user;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }
}
