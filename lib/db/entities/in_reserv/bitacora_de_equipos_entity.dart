/**
import 'package:soprano/db/entities/entity.dart';

class BitacoraDeEquiposEntity implements Entity{

  BitacoraDeEquiposEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "bitacoradeequipos";

  static get sqlCreate => '''
  CREATE TABLE 'bitacoradeequipos' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'iIdDiario' int(10) NOT NULL DEFAULT 0 COMMENT 'Id Diario',
    'sIdEquipo' varchar(25) NOT NULL DEFAULT '0' COMMENT 'Equipo ID',
    'iItemOrden' int(11) DEFAULT 0,
    'sDescripcion' varchar(350) DEFAULT NULL,
    'sIdPernocta' varchar(10) NOT NULL DEFAULT '' COMMENT '/*Pernocta',
    'sIdPlataforma' varchar(30) DEFAULT NULL,
    'sTipoObra' varchar(5) NOT NULL DEFAULT 'TD',
    'sHoraInicio' varchar(5) DEFAULT '00:00' COMMENT 'Hora de Inicio',
    'sHoraFinal' varchar(5) DEFAULT '00:00' COMMENT 'Hora de Final',
    'sHoraInicioG' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Inicio G',
    'sHoraFinalG' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Final Grupo',
    'dCantidad' decimal(8,2) DEFAULT 0.00 COMMENT 'Cantidad',
    'dSolicitado' decimal(8,2) DEFAULT 0.00,
    'sFactor' varchar(13) DEFAULT '0' COMMENT 'Factor',
    'dCostoMN' decimal(18,2) DEFAULT 0.00 COMMENT 'Costo (MN)',
    'dCostoDLL' decimal(18,2) DEFAULT 0.00 COMMENT 'Costo (DLL)',
    'dCantidad_Cubierta' decimal(11,3) DEFAULT NULL,
    'dCantidad_Plataforma' decimal(11,3) DEFAULT NULL,
    'dCantHHGenerador' decimal(40,20) NOT NULL DEFAULT 0.00000000000000000000,
    'sWbs' varchar(100) NOT NULL,
    'sNumeroActividad' varchar(20) NOT NULL,
    'dAjuste' decimal(40,20) DEFAULT NULL,
    'dCantHH' decimal(40,20) unsigned DEFAULT 0.00000000000000000000,
    'sNumeroOrden' varchar(35) NOT NULL,
    'iIdTarea' int(10) DEFAULT 1,
    'iIdActividad' int(11) DEFAULT 0,
    'lImprime' enum('Si','No') NOT NULL DEFAULT 'Si',
    PRIMARY KEY ('sContrato','dIdFecha','iIdDiario','sIdEquipo','sIdPernocta','sTipoObra','sWbs','sNumeroActividad','sNumeroOrden'),
    KEY 'bitacoradeequipos_fk' ('sContrato','sIdEquipo'),
    KEY 'bitacoradeequipos_fk1' ('sIdPernocta'),
    KEY 'sContrato' ('sContrato','dIdFecha','iIdDiario'),
    KEY 'aa_fk_012' ('sContrato','sWbs','sNumeroActividad'),
    KEY 'ot_fk_044' ('sContrato','sNumeroOrden'),
    KEY 'p_fk_005' ('sIdPlataforma'),
    CONSTRAINT 'e_fk_002' FOREIGN KEY ('sContrato', 'sIdEquipo') REFERENCES 'equipos' ('sContrato', 'sIdEquipo') ON UPDATE CASCADE,
    CONSTRAINT 'ot_fk_044' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'p_fk_005' FOREIGN KEY ('sIdPlataforma') REFERENCES 'plataformas' ('sIdPlataforma') ON UPDATE CASCADE,
    CONSTRAINT 'pr_fk_004' FOREIGN KEY ('sIdPernocta') REFERENCES 'pernoctan' ('sIdPernocta') ON DELETE CASCADE,
    CONSTRAINT 'pro_fk_037' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Bitacora de Personal x Dia';
  ''';
}*/*/