import 'dart:io';
import 'package:projectholiday/hotel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _dbName = 'appDatabase.db';
  static final _dbVersion = 1;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  late Database _database;

  Future<Database> get database async {
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    // default document directory
    String path = join(directory.path, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    print('Creating a tableFood in appDatabase');
    await db.execute('''
   CREATE TABLE $tableHotel (
     $columnId integer primary key autoincrement,
     $columnHotelName text not null,
     $columnHotelDes text not null,
     $columnImg text not null)
   ''');
  }

  Future<Hoteldb> insert(Hoteldb hotel) async {
    print('Insert a new Hotel record');
    Database db = await instance.database;
    hotel.id = await db.insert(tableHotel, hotel.toMap());
    return hotel;
  }

  Future<List<Hoteldb>> queryAllFood() async {
    print('Query all food in the tableFood');
    Database db = await instance.database;
    List<Hoteldb> hotels = [];
    List<Map> maps = await db.query(tableHotel);
    if (maps.isNotEmpty) {
      maps.forEach((e) {
        hotels.add(
            new Hoteldb(e[columnHotelName], e[columnHotelDes], e[columnImg]));
      });
    }
    return hotels;
  }

  Future<void> deleteAllHotel() async {
    Database db = await instance.database;
    await db.delete(tableHotel);
  }
}
