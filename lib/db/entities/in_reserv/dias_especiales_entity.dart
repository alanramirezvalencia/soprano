/**
import 'package:soprano/db/entities/entity.dart';

class DiasEspecialesEntity implements Entity{

  DiasEspecialesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "diasespeciales";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'diasespeciales';
  CREATE TABLE 'diasespeciales' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'iJornada' int(2) NOT NULL DEFAULT 0 COMMENT 'Jornada',
    'sDescripcion' varchar(35) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    PRIMARY KEY ('sContrato','dIdFecha'),
    KEY 'diasespeciales_fk' ('sContrato'),
    CONSTRAINT 'diasespeciales_fk' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_048' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Fechas Especiales, Dias Festivos';
  ''';
}*/