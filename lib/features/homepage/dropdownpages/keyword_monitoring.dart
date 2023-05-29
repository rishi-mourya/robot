import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeywordMonitoring extends StatelessWidget {
  const KeywordMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Keyword Monitoring'),
          leading:BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )
      ),
      body: Center(child: Text('Keyword Monitoring Page')),
    );
  }
}
