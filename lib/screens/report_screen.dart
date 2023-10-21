import 'package:attendance_control_app/models/database.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  final DatabaseProvider databaseProvider;

  ReportScreen(DatabaseProvider databaseProvider)
      : databaseProvider = databaseProvider,
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Report'),
      ),
      body: Center(
        child: Text('Report Screen'),
      ),
    );
  }
}
