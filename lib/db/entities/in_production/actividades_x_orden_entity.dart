import 'package:soprano/db/entities/entity.dart';
import 'package:soprano/db/entities/in_production/reporte_diario_entity.dart';
import 'package:flutter/material.dart';

import '../../../services/api_service.dart';
import '../../provider/db_provider.dart';

class ActividadesXOrdenEntity implements Entity {

  ActividadesXOrdenEntity(this.map);

  @override
  Map<String, dynamic> map;

  @override
  String get tableName => "actividadesxorden";

  static get sqlCreate => '''
  CREATE TABLE 'actividadesxorden' (
    'sTipoActividad'      varchar(10)     NOT NULL  DEFAULT 'Actividad',
    'IdMedida'            int(5)          NOT NULL,
    'dCantidad'           double(13,5)    NOT NULL  DEFAULT 0.00000,
    'sContrato'           varchar(15)     NOT NULL  DEFAULT '',
    'sIdConvenio'         varchar(5)      NOT NULL  DEFAULT '',
    'sNumeroOrden'        varchar(35)     NOT NULL  DEFAULT '',
    'sWbs'                varchar(100)    NOT NULL  DEFAULT '',
    'sNumeroActividad'    varchar(20)     NOT NULL  DEFAULT '',
    'mDescripcion'        text            NOT NULL,
    'sIdPlataforma'       varchar(30)     NOT NULL,
    'sIdPernocta'         varchar(10)     NOT NULL  DEFAULT '',
    PRIMARY KEY ('sContrato','sIdConvenio','sNumeroOrden','sWbs','sNumeroActividad','sTipoActividad')
  );
  ''';

  @override
  ActividadesXOrdenEntity fromJson(json) =>ActividadesXOrdenEntity({
    'sTipoActividad':json['sTipoActividad'],
    'IdMedida':json['IdMedida'],
    'dCantidad':json['dCantidad'],
    'sContrato':json['sContrato'],
    'sIdConvenio':json['sIdConvenio'],
    'sNumeroOrden':json['sNumeroOrden'],
    'sWbs':json['sWbs'],
    'sNumeroActividad':json['sNumeroActividad'],
    'mDescripcion':json['mDescripcion'],
    'sIdPlataforma':json['sIdPlataforma'],
    'sIdPernocta':json['sIdPernocta'],
  });

  String get sTipoActividad => map['sTipoActividad'] as String;
  int get idMedida => map['IdMedida'] as int;
  double get dCantidad => map['dCantidad']%1==0? (map['dCantidad'] as int).toDouble(): map['dCantidad'] as double;
  String get sContrato => map['sContrato'] == null ? "": map["sContrato"] as String;
  String get sIdConvenio => map['sIdConvenio'] as String;
  String get sNumeroOrden => map['sNumeroOrden'] == null ? "": map["sNumeroOrden"] as String;
  String get sWbs => map['sWbs'] as String;
  String get sNumeroActividad => map['sNumeroActividad'] == null ? "": map["sNumeroActividad"] as String;
  String get mDescripcion => map['mDescripcion'] == null ? "": map["mDescripcion"] as String;
  String get sIdPlataforma => map['sIdPlataforma'] as String;
  String get sIdPernocta => map['sIdPernocta'] as String;

  set sTipoActividad(String s) => map['sTipoActividad'] = s;
  set idMedida(int i) => map['IdMedida'] = i;
  set dCantidad(double d) => map['dCantidad'] = d;
  set sContrato(String s) => map['sContrato'] = s;
  set sIdConvenio(String s) => map['sIdConvenio'] = s;
  set sNumeroOrden(String s) => map['sNumeroOrden'] = s;
  set sWbs(String s) => map['sWbs'] = s;
  set sNumeroActividad(String s) => map['sNumeroActividad'] = s;
  set mDescripcion(String s) => map['mDescripcion'] = s;
  set sIdPlataforma(String s) => map['sIdPlataforma'] = s;
  set sIdPernocta(String s) => map['sIdPernocta'] = s;

  static List<ActividadesXOrdenEntity> fromJsonList(dynamic jsn) {
    List<ActividadesXOrdenEntity> list = [];
    for (var res in jsn["data"]) {
      list.add(ActividadesXOrdenEntity({}).fromJson(res));
    }
    return list;
  }

  static void request({
    required BuildContext context,
    required ReporteDiarioEntity report,
    required String token,
    required Function(List<ActividadesXOrdenEntity>) onSuccess,
    required Function(List<ActividadesXOrdenEntity>) onOffline,
  }) async => ApiService.postRequest(
    url: "https://noilmx.com/API_PRUEBA_JOBS/public/api/admin/showActividadesXOrden",
    headers: { "Authorization": "Bearer $token"},
    context: context,
    body: {
      "sContrato": report.sContratoSub,
      "dIdFecha": report.dIdFecha,
      "sNumeroOrden": report.sNumeroOrden,
      //"sIdTurno": report.sIdTurno,
    },
    onSuccessResponse: (jsn) {
      List<ActividadesXOrdenEntity> list = ActividadesXOrdenEntity.fromJsonList(jsn);
      onSuccess.call(list);
      DBProvider.db.insertOrUpdateList(list);
    },
    tryOffline: () {
      localRequest(
        sNumeroOrden: report.sNumeroOrden,
        sContrato: report.sContrato,
      ).then((list) {
        onOffline.call(list);
      });
    },
    notifyErrors: false,
  );


  static Future<List<ActividadesXOrdenEntity>> localRequest({
    required String sNumeroOrden,
    required String sContrato,
  }) async {
    //String sIdFolio = await OrdenesDeTrabajoEntity.getSIdFolio(sNumeroOrden);
    debugPrint("sContrato Recibido: $sContrato\nsNumeroOrden Recibido: $sNumeroOrden\n");
    List<ActividadesXOrdenEntity> list = [];
    var val = await DBProvider.db.database;
    var records = await val.query( ActividadesXOrdenEntity({}).tableName,
      where:"sContrato = ? and sNumeroOrden like ? AND sTipoActividad like 'actividad'",
      whereArgs: [sContrato, sNumeroOrden],
    );
    for(var record in records){
      list.add(ActividadesXOrdenEntity(record));
    }
    return list;
  }
}