import 'package:attendance_control_app/models/database.dart';
import 'package:attendance_control_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'screens/container_screen.dart';
import 'screens/course_create_screen.dart';
import 'screens/user_create_screen.dart';
import 'screens/user_course_link_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/report_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DatabaseProvider databaseProvider = DatabaseProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance Control App',
      home: ContainerScreen(databaseProvider),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: AppRoutes.dashboard,
      routes: {
        AppRoutes.dashboard: (context) => ContainerScreen(databaseProvider),
        AppRoutes.home: (context) => HomeScreen(databaseProvider),
        AppRoutes.courseCreate: (context) =>
            CourseCreateScreen(databaseProvider),
        AppRoutes.userCreate: (context) => UserCreateScreen(databaseProvider),
        AppRoutes.userCourseLink: (context) =>
            UserCourseLinkScreen(databaseProvider),
        AppRoutes.attendance: (context) => AttendanceScreen(databaseProvider),
        AppRoutes.report: (context) => ReportScreen(databaseProvider),
      },
    );
  }
}

class AppRoutes {
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const courseCreate = '/course_create';
  static const userCreate = '/user_create';
  static const userCourseLink = '/user_course_link';
  static const attendance = '/attendance';
  static const report = '/report';
}
