import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  const MySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search page')),
      body: Container(
        child: Center(
          child: Text('Search page'),
        ),
      ),
    );
  }
}
