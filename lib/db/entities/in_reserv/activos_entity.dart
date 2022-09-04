/**
import 'package:soprano/db/entities/entity.dart';

class ActivosEntity implements Entity {

  ActivosEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "activos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'activos';
  CREATE TABLE 'activos' (
  'sIdActivo'             varchar(20)   NOT NULL            COMMENT 'Activo',
  'sDescripcion'          varchar(60)   NOT NULL DEFAULT '' COMMENT 'Descripcion',
  'bImagen'               mediumblob    DEFAULT NULL        COMMENT 'Imagen',
  'iAccesos'              int(11)       DEFAULT 0,
  'sDescripcionCorta'     varchar(20)   DEFAULT NULL,
  'sNombre'               varchar(20)   DEFAULT NULL,
  'sDescripcionCompleta'  varchar(200)  DEFAULT NULL,
  'sRegion'               varchar(50)   DEFAULT NULL,
  'sDistrito'             varchar(20)   DEFAULT NULL,
  PRIMARY KEY ('sIdActivo')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ''';
}*/