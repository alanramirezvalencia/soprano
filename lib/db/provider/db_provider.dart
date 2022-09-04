import 'dart:io';

import 'package:soprano/db/entities/entity.dart';
import 'package:soprano/db/entities/in_production/notas_generales_entity.dart';
import 'package:soprano/db/entities/in_production/ordenes_de_trabajo_entity.dart';
import 'package:soprano/db/entities/in_production/reporte_diario_entity.dart';
import 'package:soprano/db/entities/in_production/reporte_fotografico_entity.dart';
import 'package:soprano/db/entities/in_production/tramite_de_permiso_entity.dart';
import 'package:soprano/db/entities/in_production/actividades_x_orden_entity.dart';
import 'package:soprano/db/entities/in_production/bitacora_de_actividades_entity.dart';
import 'package:soprano/db/entities/in_production/master_medidas_entity.dart';
import 'package:soprano/db/entities/in_production/turnos_entity.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../entities/in_production/rd_proyectos_entity.dart';

/// Singleton Database Provider
class DBProvider {

  /// Single instance of Database
  static  Database? _database;

  //Call it for obtain the db instance
  static final DBProvider db = DBProvider._();
  /// Private Constructor
  DBProvider._();

  Future<Database> get database async {
    if(_database == null ) {
      debugPrint("La database es nula");
      _database ??= await initDB();
    }
    else {
      debugPrint("La database no es nula");
    }
    return _database as Database;
  }

  /// Creates the database
  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    debugPrint("Database created on path: ${join(documentsDirectory.path,'ScansDB.db')}");
    return await openDatabase(
      join(documentsDirectory.path, 'ScansDB.db'),
      onCreate: _sqlCreateDB,
      onOpen: (db) {},
      version: 17,
    );
  }

  Future<int> insertOrUpdate(Entity entity) async {
    final db = await database;
    final res = await db.insert(entity.tableName, entity.map, conflictAlgorithm: ConflictAlgorithm.replace);
    debugPrint("Respuesta de inserción: $res");
    return res;
  }

  Future<void> insertOrUpdateList(List<Entity> list) async {
    for(var entity in list){ insertOrUpdate(entity); }
  }


  Future close() async => await _database!.close();

  void _sqlCreateDB(Database db, int version) async {
    await db.execute(ReporteDiarioEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${ReporteDiarioEntity({}).tableName} creada");
    await db.execute(ReporteFotograficoEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${ReporteFotograficoEntity({}).tableName} creada");
    await db.execute(RdProyectosEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${RdProyectosEntity({}).tableName} creada");
    await db.execute(NotasGeneralesEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${NotasGeneralesEntity({}).tableName} creada");
    await db.execute(TramiteDePermisosEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${TramiteDePermisosEntity({}).tableName} creada");
    await db.execute(BitacoraDeActividadesEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${BitacoraDeActividadesEntity({}).tableName} creada");
    await db.execute(ActividadesXOrdenEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${ActividadesXOrdenEntity({}).tableName} creada");
    await db.execute(MasterMedidasEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${MasterMedidasEntity({}).tableName} creada");
    await db.execute(OrdenesDeTrabajoEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${OrdenesDeTrabajoEntity({}).tableName} creada");
    await db.execute(TurnosEntity.sqlCreate).onError((error, stackTrace) => debugPrint("$error\n${stackTrace.toString()}"));
    debugPrint("Tabla ${TurnosEntity({}).tableName} creada");
  }

}

