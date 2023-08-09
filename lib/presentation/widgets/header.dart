import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is the header widget
    // Header contains, "todo" and "memo"
    // These are allign row.
    // The text has underline.
    // When it focused, the underline displayed is changed.
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('todo'),
        Text('memo'),
      ],
    );
  }
}
