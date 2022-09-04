/**
import 'package:soprano/db/entities/entity.dart';

class CondicionesClimatologicasEntity implements Entity{

  CondicionesClimatologicasEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "condicionesclimatologicas";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'condicionesclimatologicas';
  CREATE TABLE 'condicionesclimatologicas' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'iIdCondicion' int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Tipo de Condicion Climatologica',
    'sLocalizacion' varchar(200) NOT NULL DEFAULT '' COMMENT 'Localizacion',
    'sHorario' varchar(5) NOT NULL DEFAULT '',
    'iIdDireccion' int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'Clave de la Direccion',
    'sCantidad' varchar(20) NOT NULL DEFAULT '0.0000',
    PRIMARY KEY ('sContrato','dIdFecha','iIdCondicion','sHorario','iIdDireccion'),
    KEY 'condicionesclimatologicas_fk1' ('sContrato'),
    KEY 'iIdDireccion' ('iIdDireccion'),
    KEY 'iIdCondicion' ('iIdCondicion'),
    CONSTRAINT 'pro_fk_044' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Condiciones Climatologicas';
  ''';
*/