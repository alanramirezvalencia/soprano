/**
import 'package:soprano/db/entities/entity.dart';

class DistribucionDeEquiposEntity implements Entity{

  DistribucionDeEquiposEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "distribuciondeequipos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS `distribuciondeequipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribuciondeequipos` (
  `sContrato` varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
  `sIdConvenio` varchar(5) NOT NULL COMMENT 'Convenio',
  `sIdEquipo` varchar(25) NOT NULL DEFAULT '' COMMENT 'Equipo ID',
  `dIdFecha` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
  `dCantidad` double(16,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Cantidad',
  `dCosto` double(16,8) DEFAULT NULL COMMENT 'Costo',
  PRIMARY KEY (`sContrato`,`sIdEquipo`,`dIdFecha`,`sIdConvenio`),
  KEY `distribuciondeequipos_fk` (`sContrato`,`sIdEquipo`),
  KEY `sContrato` (`sContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Distribución de Anexo DT-4';
  ''';
}*/