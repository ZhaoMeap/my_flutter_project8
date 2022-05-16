import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World.',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('趙信睿 ListView'),
    );

    final items = List<String>.generate(100, (i) => '項目 $i');


    final widget = ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );
    return appHomePage;

  }
}