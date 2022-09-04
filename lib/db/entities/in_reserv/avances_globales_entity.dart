/**
import 'package:soprano/db/entities/entity.dart';

class AvancesGlobalesEntity implements Entity{

  AvancesGlobalesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "avancesglobales";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'avancesglobales';
  CREATE TABLE 'avancesglobales' (
    'sContrato'               varchar(15)   NOT NULL DEFAULT ''           COMMENT 'Contrato',
    'sIdConvenio'             varchar(5)    NOT NULL DEFAULT ''           COMMENT 'Convenio',
    'dIdFecha'                date          NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'sNumeroOrden'            varchar(35)   NOT NULL DEFAULT ''           COMMENT 'Numero de Orden',
    'dAvancePonderadoDia'     decimal(8,4)  NOT NULL DEFAULT 0.0000       COMMENT 'Avance Ponderado por Dia',
    'dAvancePonderadoGlobal'  decimal(8,4)  NOT NULL DEFAULT 0.0000       COMMENT 'Avance Ponderado Global',
    'dAvanceFinanciero'       decimal(8,4)  NOT NULL DEFAULT 0.0000       COMMENT 'Avance Financiero',
    PRIMARY KEY ('sContrato','sIdConvenio','dIdFecha','sNumeroOrden'),
    KEY 'avancesglobales_fk1' ('sContrato','sNumeroOrden'),
    KEY 'sContrato' ('sContrato','sIdConvenio','sNumeroOrden'),
    CONSTRAINT 'con_fk_007' FOREIGN KEY ('sContrato', 'sIdConvenio', 'sNumeroOrden') REFERENCES 'convenios' ('sContrato', 'sIdConvenio', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'ot_fk_012'  FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_032' FOREIGN KEY ('sContrato')                 REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Avances globales';
  ''';
}*/