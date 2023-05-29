import 'package:flutter/material.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integerations',style: TextStyle(color: Colors.green),),
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.blue,
      ),
    );
  }
}
