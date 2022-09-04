/**
import 'package:soprano/db/entities/entity.dart';

class KardexSistemaEntity implements Entity{

  KardexSistemaEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "kardex_sistema";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'kardex_sistema';
  CREATE TABLE 'kardex_sistema' (
    'sContrato' varchar(15) NOT NULL DEFAULT '',
    'sIdUsuario' varchar(10) NOT NULL DEFAULT '',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00',
    'sHora' varchar(12) NOT NULL DEFAULT '00:00:00.000',
    'sDescripcion' varchar(150) NOT NULL DEFAULT '',
    'lOrigen' enum('Reporte Diario','Generadores','Requisiciones y Compras','Otros Movimientos','Conceptos Generales','Frentes de Trabajo','Reprogramaciones','Importacion de Datos','Estimaciones Generales','Regeneraciones','Entrada Almacen','Salida Almacen','Reporte Fotografico') NOT NULL DEFAULT 'Otros Movimientos',
    'sModulo' varchar(30) NOT NULL DEFAULT 'Inteligent' COMMENT 'Modulo del sistema sobre el cual se trabaja, Tarifa diaria, PU, RH, etc',
    'sSubModulo' varchar(35) NOT NULL DEFAULT 'Principal' COMMENT 'Ventana donde se registra movimiento del Usuario',
    PRIMARY KEY ('sContrato','sIdUsuario','dIdFecha','sHora'),
    KEY 'kardex_sistema_fk' ('sIdUsuario')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Movimientos de Inventario';
  ''';
}*/