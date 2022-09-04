/*
import 'package:soprano/db/entities/entity.dart';

class PlataformasEntity implements Entity{

  PlataformasEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "plataformas";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'plataformas';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'plataformas' (
  'sIdPlataforma' varchar(50) NOT NULL DEFAULT '',
  'sDescripcion' varchar(50) NOT NULL DEFAULT '' COMMENT 'Descripcion',
  'lStatus' enum('Activa','Inactiva') NOT NULL DEFAULT 'Activa' COMMENT 'Status',
  'sImagen' varchar(150) DEFAULT '' COMMENT 'Ruta de Imagen',
  'sIdDistrito' varchar(5) NOT NULL DEFAULT '' COMMENT '/*Distrito ID',
  'sIdActivo' varchar(20) DEFAULT NULL,
  PRIMARY KEY ('sIdPlataforma')
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Plataformas';
  ''';
}*/*/