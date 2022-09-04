/**
import 'package:soprano/db/entities/entity.dart';

class JornadasDiariasEntity implements Entity{

  JornadasDiariasEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "jornadasdiarias";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'jornadasdiarias';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'jornadasdiarias' (
  'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
  'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
  'sNumeroOrden' varchar(35) NOT NULL COMMENT 'Numero Orden',
  'sIdTurno' char(2) NOT NULL DEFAULT '' COMMENT 'Turno',
  'sArea' varchar(35) DEFAULT NULL COMMENT 'Area',
  'sTipo' enum('Disponibilidad del Sitio','Tiempo Inactivo','Personal Administrativo') NOT NULL DEFAULT 'Disponibilidad del Sitio' COMMENT 'Tipo de Afectacion',
  'sIdPernocta' varchar(10) DEFAULT 'null' COMMENT '/*Pernocta',
  'sHoraSalida' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Salida',
  'IdEmbarcacion' int(11) DEFAULT NULL COMMENT '/*Embarcacion',
  'sHoraLlegada' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Llegada',
  'sIdPlataforma' varchar(30) DEFAULT NULL COMMENT '/*Plataforma',
  'sHoraInicio' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Inicio',
  'sHoraFinal' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Final',
  'sTiempoComida' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Tiempo Comida',
  'dPersonal' decimal(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Personal',
  'dFrente' decimal(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Frente',
  'sJornada' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Jornada',
  'sTiempoMuerto' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Tiempo Muerto',
  'mDescripcion' mediumtext NOT NULL COMMENT 'Descripcion',
  'sIdTipoMovimiento' varchar(10) DEFAULT NULL COMMENT 'Tipo Movimiento',
  'sTomo' varchar(5) NOT NULL DEFAULT '' COMMENT 'Tomo',
  'iPagina' int(4) NOT NULL DEFAULT 0 COMMENT 'Pagina',
  'iParche' int(3) NOT NULL DEFAULT 0,
  'pkLlave' int(11) NOT NULL AUTO_INCREMENT,
  'iJornadasdiarias' int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY ('pkLlave','sContrato','dIdFecha','sNumeroOrden','sIdTurno','sHoraInicio'),
  KEY 'jornadasdiarias_fk1' ('sIdPlataforma'),
  KEY 'jornadasdiarias_fk2' ('sIdPernocta'),
  KEY 'jornadasdiarias_fk3' ('sContrato','sIdTipoMovimiento'),
  KEY 'jornadasdiarias_fk6' ('sContrato','dIdFecha','sNumeroOrden','sIdTurno'),
  KEY 'sContrato' ('sContrato','sNumeroOrden','sIdTurno','dIdFecha'),
  KEY 'sIdEmbarcacion' ('IdEmbarcacion'),
  KEY 'sContrato_2' ('sContrato','sNumeroOrden','sIdTurno','dIdFecha','sHoraInicio'),
  KEY 'sContrato_3' ('sContrato','dIdFecha','sNumeroOrden','pkLlave'),
  CONSTRAINT 'ot_fk_039' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
  CONSTRAINT 'pr_fk_011' FOREIGN KEY ('sIdPernocta') REFERENCES 'pernoctan' ('sIdPernocta') ON UPDATE CASCADE,
  CONSTRAINT 'pro_fk_096' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=331 COMMENT='Tiempos Muertos';
  ''';
}*/*/*/*/