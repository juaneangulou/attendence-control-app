import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseProvider {
  static DatabaseProvider? _instance;
  static Database? _database;

  factory DatabaseProvider() {
    if (_instance == null) {
      _instance = DatabaseProvider._();
    }
    return _instance!;
  }

  DatabaseProvider._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'attendance_control.db'); // Nombre de la base de datos

    return await openDatabase(
      path,
      version: 1, // Puedes incrementar esto si realizas cambios en la estructura de la base de datos.
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE courses(
            id INTEGER PRIMARY KEY,
            name TEXT,
            date TEXT,
            time TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY,
            documentType TEXT,
            idNumber TEXT,
            name TEXT,
            email TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE attendance(
            id INTEGER PRIMARY KEY,
            courseId INTEGER,
            userId INTEGER,
            date TEXT,
            FOREIGN KEY(courseId) REFERENCES courses(id),
            FOREIGN KEY(userId) REFERENCES users(id)
          )
        ''');

        await db.execute('''
          CREATE TABLE reports(
            id INTEGER PRIMARY KEY,
            courseId INTEGER,
            reportText TEXT,
            FOREIGN KEY(courseId) REFERENCES courses(id)
          )
        ''');
      },
    );
  }
}
