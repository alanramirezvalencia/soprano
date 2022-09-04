/**
import 'package:soprano/db/entities/entity.dart';

class DireccionesEntity implements Entity{

  DireccionesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "direcciones";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'direcciones';
  CREATE TABLE 'direcciones' (
    'iIdDireccion' int(10) unsigned NOT NULL AUTO_INCREMENT,
    'sDescripcion' varchar(60) NOT NULL DEFAULT '',
    PRIMARY KEY ('iIdDireccion')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Orientaciones';
  ''';
}*/