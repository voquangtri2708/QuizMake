import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Instance database
  static Database? _db;
  // Hàm khởi tạo database
  Future<Database> initializeDatabase() async {
    if (_db != null) return _db!;

    _db = await openDatabase(
      'quiz_database.db',
      version: 1,
      onOpen: (db) {
        createTables(db);
      },
    );

    return _db!;
  }

  // Hàm tạo bảng
  void createTables(Database db) {
    db.execute('''
      CREATE TABLE LOAI_CAU_HOI (
        Ma_loai INTEGER PRIMARY KEY AUTOINCREMENT,
        Ten TEXT
      )
    ''');

    db.execute('''
      CREATE TABLE CHU_DE (
        Ma_chu_de INTEGER PRIMARY KEY AUTOINCREMENT,
        Ma_loai INTEGER,
        Ten TEXT
      )
    ''');

    db.execute('''
      CREATE TABLE CAU_HOI (
        Ma_cau INTEGER PRIMARY KEY AUTOINCREMENT,
        Ma_chu_de INTEGER,
        ND TEXT,
        FOREIGN KEY (Ma_chu_de) REFERENCES CHU_DE(Ma_chu_de),
      )
    ''');

    db.execute('''
      CREATE TABLE DAP_AN (
        Ma_cau INTEGER,
        Ma_da INTEGER PRIMARY KEY AUTOINCREMENT,
        ND TEXT,
        KQ BOOLEAN,
        FOREIGN KEY (Ma_cau) REFERENCES CAU_HOI(Ma_cau)
      )
    ''');
  }

  // Hàm chèn dữ liệu vào bảng LOAI_CAU_HOI
  Future<void> insertLoaiCauHoi(String tenLoai) async {
    final db = await initializeDatabase();
    await db.insert('LOAI_CAU_HOI', {'Ten': tenLoai});
  }

  // Hàm lấy danh sách loại câu hỏi
  Future<List<Map<String, dynamic>>> getLoaiCauHois() async {
    final db = await initializeDatabase();
    return await db.query('LOAI_CAU_HOI');
  }

  // Hàm chèn dữ liệu vào bảng CHU_DE
  Future<void> insertChuDe(String tenChuDe) async {
    final db = await initializeDatabase();
    await db.insert('CHU_DE', {'Ten': tenChuDe});
  }

  // Hàm lấy danh sách chủ đề
  Future<List<Map<String, dynamic>>> getChuDes() async {
    final db = await initializeDatabase();
    return await db.query('CHU_DE');
  }

  // Hàm chèn dữ liệu vào bảng CAU_HOI
  Future<void> insertCauHoi(int maChuDe, String tenCauHoi, int maLoai) async {
    final db = await initializeDatabase();
    await db.insert('CAU_HOI', {
      'Ma_chu_de': maChuDe,
      'Ten': tenCauHoi,
      'Ma_loai': maLoai
    });
  }

  // Hàm lấy danh sách câu hỏi theo chủ đề
  Future<List<Map<String, dynamic>>> getCauHoisByChuDe(int maChuDe) async {
    final db = await initializeDatabase();
    return await db.query(
        'CAU_HOI', where: 'Ma_chu_de = ?', whereArgs: [maChuDe]);
  }

  // Hàm chèn dữ liệu vào bảng DAP_AN
  Future<void> insertDapAn(int maCau, String ndDapAn, bool kqDapAn) async {
    final db = await initializeDatabase();
    await db.insert('DAP_AN', {'Ma_cau': maCau, 'ND': ndDapAn, 'KQ': kqDapAn});
  }

  // Hàm lấy danh sách đáp án cho câu hỏi
  Future<List<Map<String, dynamic>>> getDapAnsByCauHoi(int maCau) async {
    final db = await initializeDatabase();
    return await db.query('DAP_AN', where: 'Ma_cau = ?', whereArgs: [maCau]);
  }
}
