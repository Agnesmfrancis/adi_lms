import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DBUserManager {
  late Database _datebase;

  Future openDB() async {
    _datebase = await openDatabase(join(await getDatabasesPath(), "user.db"),
        version: 1, onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, ph_no TEXT)");
        });
  }



  Future<int> insertUser(User user) async {
    await openDB();
    return await _datebase.insert('user', user.toMap());

  }




  Future<List<User>> getUserList() async {
    await openDB();
    final List<Map<String, dynamic>> maps = await _datebase.query('user');
    return List.generate(maps.length, (index) {
      return User(id: maps[index]['id'], name: maps[index]['name'], email: maps[index]['email'], ph_no: maps[index]['ph_no']);
    });
  }


  Future<int> updateUser(User user) async {
    await openDB();
    return await _datebase.update('user', user.toMap(), where: 'id=?', whereArgs: [user.id]);
  }

  Future<void> deleteUser(int? id) async {
    await openDB();
    await _datebase.delete("user", where: "id = ? ", whereArgs: [id]);
  }
}



class User {
  int? id;
  String name;
  String email;
  String ph_no;

  User({ this.id, required this.name, required this.email, required this.ph_no});

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'ph_no': ph_no};
  }
}
