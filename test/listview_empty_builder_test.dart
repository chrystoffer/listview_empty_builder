import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listview_empty_builder/listview_empty_builder.dart';

void main() {
  testWidgets('emptyBuilder returns an empty widget when the list is empty.', (WidgetTester tester) async {
    final listView = ListView(children: []).emptyBuilder(builder: () => const Center(child: Text("Empty View")));
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: listView)));
    expect(find.text("Empty View"), findsOneWidget);
  });

  testWidgets('emptyBuilder returns an empty widget when the list is empty', (WidgetTester tester) async {
    final listView = ListView(children: const [Text("Item 1"), Text("Item 2")]).emptyBuilder(builder: () => const Center(child: Text("Empty View")));
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: listView)));

    expect(find.text("Item 1"), findsOneWidget);
    expect(find.text("Item 2"), findsOneWidget);

    expect(find.text("Empty View"), findsNothing);
  });
}
