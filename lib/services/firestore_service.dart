import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService {
  CollectionReference countersRef =
      FirebaseFirestore.instance.collection('Counters');

  Future<void> updateGlobalCounter(bool increment) async {
    if (increment) {
      return await countersRef
          .doc('Zjcgg88YnflkEMsp1YkV')
          .update({'globalCounter': FieldValue.increment(1)})
          .then((value) => print("Counter Updated"))
          .catchError((error) => print("Failed to update counter: $error"));
    } else {
      return await countersRef
          .doc('Zjcgg88YnflkEMsp1YkV')
          .update({'globalCounter': FieldValue.increment(-1)})
          .then((value) => print("Counter Updated"))
          .catchError((error) => print("Failed to update counter: $error"));
    }
  }
}
