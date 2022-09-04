/**
import 'package:soprano/db/entities/entity.dart';

class PersonalEntity implements Entity{

  PersonalEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "personal";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'personal';
  CREATE TABLE 'personal' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'sIdPersonal' varchar(25) NOT NULL DEFAULT '' COMMENT 'Personal ID',
    'iItemOrden' int(11) NOT NULL DEFAULT 0 COMMENT 'Item Orden',
    'sDescripcion' varchar(250) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    'sIdTipoPersonal' varchar(4) NOT NULL DEFAULT '' COMMENT '/*Tipo de Personal',
    'IdMedida' int(5) NOT NULL COMMENT 'Medida',
    'dCantidad' double(12,6) NOT NULL DEFAULT 0.000000 COMMENT 'Cantidad',
    'dCostoMN' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo MN',
    'dCostoDLL' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo DLL',
    'dVentaMN' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Venta MN',
    'dVentaDLL' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Venta DLL',
    'dFechaInicio' date NOT NULL DEFAULT '2010-06-01' COMMENT 'Fecha Inicio',
    'dFechaFinal' date NOT NULL DEFAULT '2010-06-01' COMMENT 'Fecha Final',
    'lProrrateo' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Prorrateo',
    'lCobro' enum('Si','No') NOT NULL DEFAULT 'Si',
    'lImprime' enum('Si','No') NOT NULL DEFAULT 'Si',
    'lAplicaTM' enum('Si','No') NOT NULL DEFAULT 'Si',
    'iJornada' int(2) NOT NULL DEFAULT 12 COMMENT 'Jornada',
    'lDistribuye' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Distribuye ?',
    'lPernocta' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Incluye Personal en Generador de Pernocta',
    'sAgrupaPersonal' varchar(25) DEFAULT 'null' COMMENT 'Contiene la Categoria de personal',
    'lTotalizarPernocta' enum('Si','No') NOT NULL DEFAULT 'Si',
    'lAplicaGerencial' enum('Si','No') NOT NULL DEFAULT 'Si',
    'sUnificador' varchar(2) DEFAULT NULL,
    'lSumaSolicitado' enum('Si','No') DEFAULT 'Si',
    'iId_AgrupadorPersonal' int(11) DEFAULT NULL,
    'sAnexo' varchar(5) DEFAULT NULL,
    'eOcupado' enum('Si','No') DEFAULT 'No',
    'sNumeroCuenta' int(15) DEFAULT NULL,
    PRIMARY KEY ('sContrato','sIdPersonal','sIdTipoPersonal'),
    KEY 'personal_fk' ('sAgrupaPersonal'),
    KEY 'sContrato' ('sContrato','sIdPersonal'),
    KEY 'personal_fk2' ('sIdTipoPersonal'),
    KEY 'a_fk_012' ('sAnexo'),
    KEY 'm_fk_017' ('IdMedida'),
    CONSTRAINT 'a_fk_012' FOREIGN KEY ('sAnexo') REFERENCES 'anexos' ('sAnexo') ON UPDATE CASCADE,
    CONSTRAINT 'm_fk_017' FOREIGN KEY ('IdMedida') REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_084' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Personal';
  ''';
}*/*/