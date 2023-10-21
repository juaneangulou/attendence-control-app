import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserRepository {
  final Database database;

  UserRepository({required this.database});

  Future<void> insertUser(Map<String, dynamic> user) async {
    await database.insert('users', user);
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    return await database.query('users');
  }
}
