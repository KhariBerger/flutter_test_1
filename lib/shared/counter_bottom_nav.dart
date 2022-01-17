import 'package:flutter/material.dart';

class CounterBottomNav extends StatelessWidget {
  const CounterBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/increment');
              break;
            case 1:
              Navigator.pushNamed(context, '/decrement');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: '+'),
          BottomNavigationBarItem(
              icon: Icon(Icons.exposure_minus_1), label: '-')
        ]);
  }
}
