import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortMonitoring extends StatelessWidget {
  const PortMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Port Monitoring'),
          leading:BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )
      ),
      body: Center(child: Text('Port Monitoring Page')),
    );
  }
}
