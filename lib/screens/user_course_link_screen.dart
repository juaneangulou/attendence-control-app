import 'package:attendance_control_app/models/database.dart';
import 'package:flutter/material.dart';

class UserCourseLinkScreen extends StatelessWidget {
  final DatabaseProvider databaseProvider;

  UserCourseLinkScreen(DatabaseProvider databaseProvider)
      : databaseProvider = databaseProvider,
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Text('User Course Link Screen'),
      ),
    );
  }
}
