/**
import 'package:soprano/db/entities/entity.dart';

class DistribucionDeAnexoEntity implements Entity{

  DistribucionDeAnexoEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "distribuciondeanexo";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'distribuciondeanexo';
  CREATE TABLE 'distribuciondeanexo' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'sIdConvenio' varchar(5) NOT NULL DEFAULT '' COMMENT 'Convenio',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'sWbs' varchar(100) NOT NULL DEFAULT '' COMMENT 'sWbs',
    'sNumeroActividad' varchar(10) NOT NULL DEFAULT '' COMMENT 'Numero de Actividad',
    'dCantidad' double(12,5) NOT NULL DEFAULT 0.00000 COMMENT 'Cantidad',
    PRIMARY KEY ('sContrato','sIdConvenio','dIdFecha','sWbs','sNumeroActividad'),
    KEY 'distribuciondeanexo_fk' ('sContrato','sIdConvenio','sWbs'),
    CONSTRAINT 'distribuciondeanexo_fk' FOREIGN KEY ('sContrato', 'sIdConvenio', 'sWbs') REFERENCES 'actividadesxanexo' ('sContrato', 'sIdConvenio', 'sWbs') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Distribucion de Actividades';
  ''';
}*/