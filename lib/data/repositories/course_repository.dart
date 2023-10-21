import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CourseRepository {
  final Database database;

  CourseRepository({required this.database});

  Future<void> insertCourse(Map<String, dynamic> course) async {
    await database.insert('courses', course);
  }

  Future<List<Map<String, dynamic>>> getAllCourses() async {
    return await database.query('courses');
  }
}
