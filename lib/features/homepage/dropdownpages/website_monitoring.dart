import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homeScreen.dart';

class WebsiteMonitoring extends StatelessWidget {
  const WebsiteMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:BackButton(
            onPressed: () => Navigator.of(context).pop(),
        )
      ),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Text("This is Website Monitoring page"),
      ),
    );
  }
}
