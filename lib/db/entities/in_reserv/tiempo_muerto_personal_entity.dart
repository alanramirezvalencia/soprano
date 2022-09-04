/**
import 'package:soprano/db/entities/entity.dart';

class TiempoMuertoPersonalEntity implements Entity{

  TiempoMuertoPersonalEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "tiempomuertopersonal";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'tiempomuertopersonal';
  CREATE TABLE 'tiempomuertopersonal' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de Tiempo muerto',
    'sNumeroOrden' varchar(35) NOT NULL COMMENT 'Frente de Trabajo',
    'sIdTurno' char(2) NOT NULL DEFAULT '' COMMENT 'Turno',
    'sIdPersonalEquipo' varchar(25) NOT NULL DEFAULT '' COMMENT 'Id de Personal o Equipo',
    'dCantidad' int(11) DEFAULT 0 COMMENT 'Cantidad de Personal/EquipoAfectado',
    'sHoraInicio' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora de inicio de tiempo muerto',
    'sTipo' varchar(20) NOT NULL DEFAULT '' COMMENT 'Personal o Equipo',
    PRIMARY KEY ('sContrato','dIdFecha','sNumeroOrden','sIdTurno','sIdPersonalEquipo','sTipo'),
    UNIQUE KEY 'sContrato' ('sContrato','dIdFecha','sNumeroOrden','sIdTurno','sHoraInicio','sIdPersonalEquipo'),
    KEY 'tiempomuertopersonal_fk' ('sContrato','sNumeroOrden','sIdTurno','dIdFecha'),
    CONSTRAINT 'ot_fk_031' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_012' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 29696 kB';
  ''';
}*/