import 'package:flutter/material.dart';

class StatusPageScreen extends StatelessWidget {
  const StatusPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Page'),
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.orange,
      ),
    );
  }
}
