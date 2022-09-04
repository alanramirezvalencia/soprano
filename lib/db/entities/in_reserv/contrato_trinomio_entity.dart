/**
import 'package:soprano/db/entities/entity.dart';

class ContratoTrinomioEntity implements Entity{

  ContratoTrinomioEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "contrato_trinomio";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'contrato_trinomio';
  CREATE TABLE 'contrato_trinomio' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'sInstalacion' varchar(50) NOT NULL DEFAULT '' COMMENT 'Instalacion',
    'sFondo' varchar(10) NOT NULL DEFAULT '' COMMENT 'Fondo',
    'sPosicionFinanciera' varchar(9) NOT NULL DEFAULT '' COMMENT 'Posicion Financiera',
    'sCentroGestorEjecutor' varchar(16) NOT NULL DEFAULT '' COMMENT 'Centro Gestor Ejecutor',
    'sCuentaMayor' varchar(8) NOT NULL DEFAULT '' COMMENT 'Cuenta Mayor',
    'sElementoPep' varchar(17) NOT NULL DEFAULT '' COMMENT 'Elemento PEP',
    'lVigente' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Vigente ?',
    'sUtilizacionFondo' varchar(25) DEFAULT NULL,
    'sCosto' varchar(20) DEFAULT NULL,
    'sBeneficio' varchar(20) DEFAULT NULL,
    'sActividad' varchar(10) DEFAULT NULL,
    PRIMARY KEY ('sContrato','sInstalacion'),
    CONSTRAINT 'contrato_trinomio_fk' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_046' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ''';
}*/