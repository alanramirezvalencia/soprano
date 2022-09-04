/**
import 'package:soprano/db/entities/entity.dart';

class BitacoraDeTiemposExtraEntity implements Entity{

  BitacoraDeTiemposExtraEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "bitacoradetiemposextras";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS `bitacoradetiemposextras`;
CREATE TABLE `bitacoradetiemposextras` (
  `sContrato` varchar(15) NOT NULL DEFAULT '',
  `dIdFecha` date NOT NULL DEFAULT '0000-00-00',
  `iIdDiario` int(11) NOT NULL DEFAULT 0,
  `iItemOrden` int(11) DEFAULT NULL COMMENT 'Ordenamiento de acticidades',
  `sIdPersonal` varchar(25) NOT NULL DEFAULT '*',
  `sDescripcion` varchar(100) NOT NULL DEFAULT '*',
  `dCantidad` double NOT NULL DEFAULT 0,
  `sHoraInicio` varchar(5) NOT NULL DEFAULT '',
  `sHoraFinal` varchar(5) NOT NULL DEFAULT '',
  `sIdPernocta` varchar(10) NOT NULL DEFAULT 'PERNOCTA',
  `sIdPlataforma` varchar(30) NOT NULL DEFAULT 'PLATAFORMA',
  `sNumeroOrden` varchar(35) NOT NULL DEFAULT 'FOLIO',
  `sTipoObra` varchar(10) NOT NULL DEFAULT 'TD',
  PRIMARY KEY (`sContrato`,`dIdFecha`,`iIdDiario`,`sIdPersonal`),
  KEY `bitacoradetiemposextras_fk` (`sContrato`,`sIdPersonal`),
  KEY `sContrato` (`sContrato`,`dIdFecha`,`iIdDiario`),
  KEY `p_fk_008` (`sIdPersonal`),
  KEY `pr_fk_001` (`sIdPernocta`),
  KEY `ot_fk_046` (`sContrato`,`sNumeroOrden`),
  CONSTRAINT `ot_fk_046` FOREIGN KEY (`sContrato`, `sNumeroOrden`) REFERENCES `ordenesdetrabajo` (`sContrato`, `sNumeroOrden`) ON UPDATE CASCADE,
  CONSTRAINT `p_fk_008` FOREIGN KEY (`sIdPersonal`) REFERENCES `plataformas` (`sIdPlataforma`) ON UPDATE CASCADE,
  CONSTRAINT `pr_fk_001` FOREIGN KEY (`sIdPernocta`) REFERENCES `pernoctan` (`sIdPernocta`) ON UPDATE CASCADE,
  CONSTRAINT `pro_fk_042` FOREIGN KEY (`sContrato`) REFERENCES `rd_proyectos` (`sContrato`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tiempos Extras';
  ''';
} **/