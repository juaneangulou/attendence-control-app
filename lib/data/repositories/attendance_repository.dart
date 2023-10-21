import 'package:sqflite/sqflite.dart';

class AttendanceRepository {
  final Database database;

  AttendanceRepository({required this.database});

  Future<void> recordAttendance(int userId, int courseId, String time) async {
    await database.insert(
      'attendance',
      {'user_id': userId, 'course_id': courseId, 'time': time},
    );
  }

  Future<List<Map<String, dynamic>>> getAttendanceForCourse(int courseId) async {
    return await database.query('attendance',
        where: 'course_id = ?',
        whereArgs: [courseId],
        orderBy: 'time ASC'); // Puedes ordenar por hora si es necesario.
  }
}
