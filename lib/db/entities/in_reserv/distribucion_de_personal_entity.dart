/*
import 'package:soprano/db/entities/entity.dart';

class DistribucionDePersonalEntity implements Entity{

  DistribucionDePersonalEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "distribuciondepersonal";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'distribuciondepersonal';
  CREATE TABLE 'distribuciondepersonal' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'sIdPersonal' varchar(25) NOT NULL DEFAULT '' COMMENT 'Personal ID',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'dCantidad' double(12,5) NOT NULL DEFAULT 0.00000 COMMENT 'Cantidad',
    PRIMARY KEY ('sContrato','sIdPersonal','dIdFecha'),
    KEY 'distribuciondepersonal_fk' ('sContrato','sIdPersonal'),
    KEY 'sContrato' ('sContrato')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Distribución de Anexo DT-4';
  ''';
}*/