import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = ['Home', 'Counter++', 'Counter--', 'Other'];

    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
        decoration: BoxDecoration(color: Colors.orange),
        child: Text('TestApp1',
            style: TextStyle(color: Colors.white, fontSize: 28))));
    for (var element in menuTitles) {
      // Widget screen = Container();
      //Side Drawer Navigation
      menuItems.add(ListTile(
          title: Text(element, style: const TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home':
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/');
                break;
              case 'Counter++':
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/increment');
                break;
              case 'Counter--':
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/decrement');
                break;
              case 'Other':
                break;
            }
          }));
    }
    return menuItems;
  }
}
