/**
import 'package:soprano/db/entities/entity.dart';

class AnexosEntity implements Entity {

  AnexosEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "anexos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'anexos';
  CREATE TABLE 'anexos' (
  'sAnexo'                varchar(5)        NOT NULL,
  'sDescripcion'          varchar(300)      DEFAULT NULL,
  'iIdEstimacionContrato' int(11)           DEFAULT 0,
  'sTipo'                 enum('BARCO','PERSONAL','EQUIPO','PERNOCTA','ANEXO') DEFAULT 'ANEXO',
  'sTierra'               enum('Si','No')   DEFAULT 'Si',
  'iIdMedida'             int(5)            NOT NULL,
  'sMedida'               varchar(45)       DEFAULT NULL,
  'dVentaMn'              decimal(18,2)     NOT NULL DEFAULT 0.00,
  'dVentaDll'             decimal(18,2)     NOT NULL DEFAULT 0.00,
  'iOrden'                int(11) unsigned  NOT NULL DEFAULT 0 COMMENT 'Ordenamiento de anexos',
  'dCantidad'             double(15,2)      NOT NULL DEFAULT 0.00,
  'sTitulo'               varchar(150)      NOT NULL DEFAULT '',
  'sEtiqueta'             varchar(200)      NOT NULL DEFAULT 'N/A',
  'sAnexoDescripcion'     varchar(200)      NOT NULL DEFAULT 'N/A',
  'itemOrden' int(11)     DEFAULT NULL,
  'sAnexoDescripcion2'    varchar(200)      NOT NULL,
  'Nomenclatura'          varchar(5)        DEFAULT NULL,
  PRIMARY KEY ('sAnexo'),
  KEY 'm_fk_007' ('iIdMedida'),
  CONSTRAINT 'm_fk_007' FOREIGN KEY ('iIdMedida') REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ''';
}*/