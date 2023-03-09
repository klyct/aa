import 'dart:io';

import 'package:aa/model/post_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DataBaseHelper{
  static const nombreBD ='SAILORBOOK';
  static const versionBD = 1;
 
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    return _database = await _initDatabase();
  }

  _initDatabase ()async{
    Directory folder = await getApplicationDocumentsDirectory();
    String pathBD = join(folder.path,nombreBD);
    return await openDatabase(
      pathBD,
      version: versionBD,
      onCreate: _createTable,
      );
  }

  _createTable(Database db, int version){
    String query= "CREATE TABLE  tblPost(idPost integer primary key, dscPost varchar(200), datePost date)";
    db.execute(query);
  }

  // ignore: non_constant_identifier_names
  Future<int> Insertar(String table, Map<String,dynamic>map) async{
    var conexion = await database ;
    return await conexion.insert(table, map);
  }

  // ignore: non_constant_identifier_names
  Future<int> Actualizar(String table, Map<String,dynamic>map) async{
    var conexion = await database ;
    return await conexion.update(table, map, where: 'idPost = ?', whereArgs: [map['idPost']]);
  }

  // ignore: non_constant_identifier_names
  Future<int> Eliminar(String table, int id) async{
    var conexion = await database ;
    return await conexion.delete(table, where:'idPost = ?',whereArgs: [id]);
  }

  // ignore: non_constant_identifier_names
  Future<List<PostModel>> GETALLPOST() async{
    var conexion = await database;
    var result =  await conexion.query('tblPost');
    return result.map((post) => PostModel.fromMap(post)).toList();
  }
  
}