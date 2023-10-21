import 'package:attendance_control_app/models/database.dart';
import 'package:flutter/material.dart';

class CourseCreateScreen extends StatelessWidget {
  final DatabaseProvider databaseProvider;

  CourseCreateScreen(DatabaseProvider databaseProvider)
      : databaseProvider = databaseProvider,
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text('Course Create Screen'),
      ),
    );
  }
}
