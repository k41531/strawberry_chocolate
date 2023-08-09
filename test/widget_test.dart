import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:strawberry_chocolate/main.dart';
import 'package:strawberry_chocolate/presentation/widgets/header.dart';
import 'package:strawberry_chocolate/presentation/widgets/footer.dart';

void main() {
  testWidgets('Home widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    // Check if the Header widget is found
    expect(find.byType(HeaderWidget),
        findsOneWidget); // Replace HeaderWidget with the actual type of your header widget

    // Check if the Footer widget is found
    expect(find.byType(FooterWidget),
        findsOneWidget); // Replace FooterWidget with the actual type of your footer widget
  });

  testWidgets("Header widget test", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HeaderWidget(),
    ));
    expect(find.text('todo'), findsOneWidget);
    expect(find.text('memo'), findsOneWidget);
  });

  testWidgets("Footer widget test", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: FooterWidget(),
    ));
    expect(find.byIcon(Icons.home_filled), findsOneWidget);
    expect(find.byIcon(Icons.settings), findsOneWidget);
  });
}
