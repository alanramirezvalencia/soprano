/**
import 'package:soprano/db/entities/entity.dart';

class CentroProcesoEntity implements Entity{

  CentroProcesoEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "centro_proceso";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'centro_proceso';
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!40101 SET character_set_client = utf8 */;
  CREATE TABLE 'centro_proceso' (
    'sIdCentro' varchar(35) NOT NULL DEFAULT '',
    'sDescripcion' varchar(100) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    PRIMARY KEY ('sIdCentro')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Centro de proceso';
  ''';
}*/