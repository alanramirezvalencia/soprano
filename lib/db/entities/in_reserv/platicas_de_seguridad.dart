/**
import 'package:soprano/db/entities/entity.dart';

class PlaticasDeSeguridadEntity implements Entity{

  PlaticasDeSeguridadEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "platicasdeseguridad";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'platicasdeseguridad';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'platicasdeseguridad' (
  'sContrato' varchar(15) NOT NULL DEFAULT '',
  'sNumeroOrden' varchar(35) NOT NULL DEFAULT '',
  'dIdFecha' date NOT NULL DEFAULT '0000-00-00',
  'sTema' varchar(255) DEFAULT NULL,
  PRIMARY KEY ('sContrato','sNumeroOrden','dIdFecha'),
  CONSTRAINT 'ot_fk_036' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
  CONSTRAINT 'pro_fk_081' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Programa de Platicas de Seguridad';
  ''';
}*/