import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CounterDisplay extends StatefulWidget {
  @override
  _CounterDisplayState createState() => _CounterDisplayState();
}

class _CounterDisplayState extends State<CounterDisplay> {
  final Stream _counterStream = FirebaseFirestore.instance
      .collection('Counters')
      .doc('Zjcgg88YnflkEMsp1YkV')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _counterStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return Text(snapshot.data.data()['globalCounter'].toString());
      },
    );
  }
}
