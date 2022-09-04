/**
import 'package:soprano/db/entities/entity.dart';

class GruposEntity implements Entity{

  GruposEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "grupos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'grupos';
  CREATE TABLE 'grupos' (
    'sIdGrupo' varchar(15) NOT NULL DEFAULT '' COMMENT 'Grupo',
    'sDescripcion' varchar(30) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    'sMail' varchar(50) NOT NULL DEFAULT '' COMMENT 'Mail principal del Grupo',
    'sPassword' varchar(20) NOT NULL DEFAULT '' COMMENT 'Password del mail de grupo',
    'Imagen' mediumblob DEFAULT NULL COMMENT 'Imagen de grupo',
    'EvaluaProveedor' enum('Todo','Compras','Otros') NOT NULL DEFAULT 'Todo' COMMENT 'Indica las preguntas que puede visualizar en la seccion de evaluacion de proveedores',
    PRIMARY KEY ('sIdGrupo')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Grupos de Usuarios';
  ''';
}*/