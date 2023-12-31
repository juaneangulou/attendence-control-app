import 'package:attendance_control_app/models/database.dart';
import 'package:attendance_control_app/screens/attendance_screen.dart';
import 'package:attendance_control_app/screens/course_create_screen.dart';
import 'package:attendance_control_app/screens/report_screen.dart';
import 'package:attendance_control_app/screens/user_course_link_screen.dart';
import 'package:attendance_control_app/screens/user_create_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final DatabaseProvider databaseProvider;

  HomeScreen( this.databaseProvider);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      CourseCreateScreen( widget.databaseProvider),
      UserCreateScreen( widget.databaseProvider),
      UserCourseLinkScreen( widget.databaseProvider),
      AttendanceScreen( widget.databaseProvider),
      ReportScreen( widget.databaseProvider),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Control App'),
      ),
      body: _screens[_currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Create Course'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            ListTile(
              title: Text('Create User'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            ListTile(
              title: Text('Link User to Course'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            ListTile(
              title: Text('Attendance'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            ListTile(
              title: Text('Generate Report'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
