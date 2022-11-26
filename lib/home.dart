import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile page')),
      body: Container(
        child: Center(
          child: Text('Home page'),
        ),
      ),
    );
  }
}
