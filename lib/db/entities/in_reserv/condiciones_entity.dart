/**
import 'package:soprano/db/entities/entity.dart';

class CondicionesEntity implements Entity{

  CondicionesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "condiciones";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'condiciones';
  CREATE TABLE 'condiciones' (
    'iIdCondicion' int(10) unsigned NOT NULL AUTO_INCREMENT,
    'sDescripcion' varchar(100) NOT NULL DEFAULT '',
    'iIdMedida' int(5) NOT NULL,
    'sTipo' enum('Gerencial','Reporte') DEFAULT 'Gerencial',
    PRIMARY KEY ('iIdCondicion'),
    KEY 'm_fk_010' ('iIdMedida'),
    CONSTRAINT 'm_fk_010' FOREIGN KEY ('iIdMedida') REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tipos de Condiciones Climatologicas';
  ''';
}*/