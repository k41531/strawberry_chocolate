// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:strawberry_chocolate/main.dart';
import 'package:strawberry_chocolate/presentation/widgets/header.dart';
import 'package:strawberry_chocolate/presentation/widgets/footer.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    // Check if the Header widget is found
    expect(find.byType(HeaderWidget),
        findsOneWidget); // Replace HeaderWidget with the actual type of your header widget

    // Check if the Footer widget is found
    expect(find.byType(FooterWidget),
        findsOneWidget); // Replace FooterWidget with the actual type of your footer widget
  });
}
