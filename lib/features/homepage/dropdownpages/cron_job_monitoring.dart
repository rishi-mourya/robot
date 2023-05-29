import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CronJobMonitoring extends StatelessWidget {
  const CronJobMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
        appBar: AppBar(
            title: Text('Ping Monitoring'),
            leading:BackButton(
            onPressed: () => Navigator.of(context).pop(),
            )
    ),
      body: Center(
        child: Text("This is Cron Job Monitoring page"),
      ),
    );
  }
}
