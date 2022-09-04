/**
import 'package:soprano/db/entities/entity.dart';

class EmbarcacionesEntity implements Entity{

  EmbarcacionesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "embarcacion_vigencia";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'embarcacion_vigencia';
  CREATE TABLE 'embarcacion_vigencia' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'IdEmbarcacion' int(11) NOT NULL COMMENT 'Embarcacion ID',
    'dFechaInicio' date NOT NULL COMMENT 'Fecha de Incio vigencia de embarcacion',
    'dFechaFinal' date DEFAULT NULL COMMENT 'Fecha Final de vigencia de embarcacion',
    PRIMARY KEY ('sContrato','IdEmbarcacion','dFechaInicio'),
    KEY 'secondary' ('sContrato','IdEmbarcacion'),
    KEY 'sIdEmbarcacion' ('IdEmbarcacion')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Embarcación';
  ''';
}*/