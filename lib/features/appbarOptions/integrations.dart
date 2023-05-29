import 'package:flutter/material.dart';

class IntegrationsScreen extends StatelessWidget {
  const IntegrationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integrations',style: TextStyle(color: Colors.green),),
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.deepOrange,
      ),
    );
  }
}
