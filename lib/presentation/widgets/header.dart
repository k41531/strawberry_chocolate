import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('todo', style: TextStyle(fontSize: 16)),
        Text('memo', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
