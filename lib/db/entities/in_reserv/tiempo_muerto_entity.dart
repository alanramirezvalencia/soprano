/**
import 'package:soprano/db/entities/entity.dart';

class TiempoMuertoEntity implements Entity{

  TiempoMuertoEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "tiempomuerto";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'tiempomuerto';
CREATE TABLE 'tiempomuerto' (
  'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
  'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
  'sNumeroOrden' varchar(30) NOT NULL DEFAULT '' COMMENT 'Numero de Orden',
  'sIdTurno' char(2) NOT NULL DEFAULT '' COMMENT 'Turno',
  'sArea' varchar(35) NOT NULL DEFAULT '' COMMENT 'Area',
  'sHoraInicio' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Inicio',
  'sHoraFinal' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Final',
  'dPersonal' decimal(3,0) NOT NULL DEFAULT 0 COMMENT 'Personal',
  'dFrente' int(3) NOT NULL DEFAULT 0 COMMENT 'Frente',
  'sTiempoMuerto' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Tiempo Muerto',
  'dTiempoMuerto' float(6,0) NOT NULL DEFAULT 0 COMMENT 'Tiempo Muerto',
  'mDescripcion' mediumtext NOT NULL COMMENT 'Descripcion',
  'sTipo' varchar(4) NOT NULL DEFAULT '' COMMENT 'Tipo',
  'sTomo' varchar(5) NOT NULL DEFAULT '' COMMENT 'Tomo',
  'iPagina' int(4) NOT NULL DEFAULT 0 COMMENT 'Pagina',
  PRIMARY KEY ('sContrato','dIdFecha','sNumeroOrden','sIdTurno','sArea','sHoraInicio'),
  KEY 'sContrato' ('sContrato','sNumeroOrden','sIdTurno','dIdFecha'),
  CONSTRAINT 'ot_fk_032' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
  CONSTRAINT 'pro_fk_069' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tiempos Muertos';
  ''';
}*/