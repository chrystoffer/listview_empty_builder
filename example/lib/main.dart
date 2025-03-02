import 'package:flutter/material.dart';
import 'package:listview_empty_builder/listview_empty_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)), home: const MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listTest = [];

  void addItem() {
    setState(() {
      listTest.add("Test");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: listTest.length,
        itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5), child: Card(elevation: 0, child: Padding(padding: const EdgeInsets.all(1.0), child: ListTile(title: Text(listTest[index], maxLines: 1, overflow: TextOverflow.ellipsis)))));
        },
      ).emptyBuilder(
        builder: () {
          return Center(child: Text("No items found."));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: addItem, tooltip: 'ADD', child: const Icon(Icons.add)),
    );
  }
}
