import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  factory DatabaseHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDatabase();
      return _database!;
    }
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'your_database_name.db'); // Reemplaza 'your_database_name' con el nombre de tu base de datos.
    
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Define la estructura de tus tablas aquí.
        await db.execute('''
          CREATE TABLE courses(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            date TEXT,
            time TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            documentType TEXT,
            idNumber TEXT,
            name TEXT,
            email TEXT
          )
        ''');

        // Puedes agregar más tablas si es necesario.
      },
    );
  }
}
