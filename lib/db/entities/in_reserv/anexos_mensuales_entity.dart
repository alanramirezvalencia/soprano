/**
import 'package:soprano/db/entities/entity.dart';

class AnexosMensualesEntity implements Entity{

  AnexosMensualesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "anexosmensuales";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'anexosmensuales';
  CREATE TABLE 'anexosmensuales' (
  'sContrato'         varchar(15)   NOT NULL DEFAULT ''           COMMENT 'Contrato',
  'sIdConvenio'       varchar(5)    NOT NULL DEFAULT ''           COMMENT 'Convenio',
  'sAnexo'            varchar(10)   NOT NULL DEFAULT '' ,
  'sWbs'              varchar(100)  NOT NULL DEFAULT ''           COMMENT 'sWbs',
  'sNumeroActividad'  varchar(10)   NOT NULL DEFAULT ''           COMMENT 'Numero de Actividad',
  'dIdFecha'          date          NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
  'DT'                double(13,5)  NOT NULL DEFAULT 0.00000      COMMENT 'DT',
  'DEmn'              decimal(19,2) NOT NULL DEFAULT 0.00         COMMENT 'DE MN',
  'DEdll'             decimal(19,2) NOT NULL DEFAULT 0.00         COMMENT 'DE DLL',
  PRIMARY KEY ('sContrato','sIdConvenio','sAnexo','dIdFecha','sWbs','sNumeroActividad'),
  KEY 'anexosmensuales_fk'  ('sContrato','sIdConvenio','sWbs'),
  KEY 'Secondary'           ('sContrato','sIdConvenio','sWbs','sNumeroActividad','dIdFecha'),
  KEY 'Third'               ('sContrato','sIdConvenio','sWbs','sNumeroActividad')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Anexos Mensuales';
  ''';
}*/