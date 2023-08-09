import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is the footer widget
    // Footer contains, "home" and "settings"
    // These are allign row.
    // The icon has underline.
    // When it focused, the underline displayed is changed.
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: 'home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'settings',
      ),
    ]);
  }
}
