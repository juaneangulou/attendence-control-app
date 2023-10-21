import 'package:attendance_control_app/models/database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final DatabaseProvider databaseProvider;

  HomeScreen(DatabaseProvider databaseProvider)
      : databaseProvider = databaseProvider,
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
