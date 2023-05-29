import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PingMonitoring extends StatelessWidget {
  const PingMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Ping Monitoring'),
          leading:BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )
      ),
      body: Center(child: Text('Ping Monitoring Page')),
    );
  }
}
