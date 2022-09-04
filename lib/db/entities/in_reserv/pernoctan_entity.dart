/*
import 'package:soprano/db/entities/entity.dart';

class PernoctanEntity implements Entity{

  PernoctanEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "pernoctan";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'pernoctan';
CREATE TABLE 'pernoctan' (
  'sIdPernocta' varchar(10) NOT NULL DEFAULT '' COMMENT 'Pernocta ID',
  'sDescripcion' varchar(50) NOT NULL DEFAULT '' COMMENT 'Descripcion',
  'sClasificacion' enum('COMPLEJO','FLOTEL','OTROS') NOT NULL DEFAULT 'FLOTEL' COMMENT 'Clasificacion',
  PRIMARY KEY ('sIdPernocta')
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Plataformas o Embarcaciones de Pernocta';
  ''';
}*/