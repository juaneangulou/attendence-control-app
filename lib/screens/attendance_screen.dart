import 'package:attendance_control_app/models/database.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  final DatabaseProvider databaseProvider;

  AttendanceScreen(DatabaseProvider databaseProvider)
      : databaseProvider = databaseProvider,
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Center(
        child: Text('Attendance Screen'),
      ),
    );
  }
}
