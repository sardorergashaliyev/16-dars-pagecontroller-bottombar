import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings page')),
      body: Container(
        child: Center(
          child: Text('Settings page'),
        ),
      ),
    );
  }
}
