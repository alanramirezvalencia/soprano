/**
import 'package:soprano/db/entities/entity.dart';

class BitacoraDePersonalEntity implements Entity{

  BitacoraDePersonalEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "bitacoradepersonal";

  static get sqlCreate => '''
  CREATE TABLE 'bitacoradepersonal' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'iIdDiario' int(10) NOT NULL DEFAULT 0 COMMENT 'Id Diario',
    'sIdPersonal' varchar(25) NOT NULL DEFAULT '' COMMENT 'Personal ID',
    'iItemOrden' int(11) NOT NULL DEFAULT 0 COMMENT 'Ordenamiento para las optativas',
    'sTipoObra' varchar(5) NOT NULL DEFAULT 'TD' COMMENT 'Division de Personal para obras Mixtas si el Personal es para PU o Administacion',
    'sDescripcion' varchar(350) DEFAULT NULL,
    'sIdPernocta' varchar(10) NOT NULL DEFAULT '' COMMENT '/*Pernocta',
    'sIdPlataforma' varchar(30) NOT NULL COMMENT '/*Plataforma',
    'sHoraInicio' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora de Inicio',
    'sHoraFinal' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Final',
    'sHoraInicioG' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Inicio Grupo',
    'sHoraFinalG' varchar(5) NOT NULL DEFAULT '00:00' COMMENT 'Hora Final Grupo',
    'dCantidad' decimal(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Cantidad',
    'dSolicitado' decimal(8,2) NOT NULL DEFAULT 0.00,
    'sFactor' varchar(13) NOT NULL DEFAULT '0.000000' COMMENT 'Factor',
    'dCostoMN' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo (MN)',
    'dCostoDLL' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo (DLL)',
    'mMotivos' mediumtext DEFAULT NULL,
    'sAgrupaPersonal' varchar(25) NOT NULL DEFAULT '*' COMMENT 'Categoria de personal',
    'sTipoPernocta' varchar(10) NOT NULL DEFAULT '1' COMMENT 'Tipo de pernocta o servicio',
    'lAplicaPernocta' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Aplica la pernocta en el Dia.',
    'lCalculaBarco' enum('Si','No') NOT NULL DEFAULT 'Si',
    'dCantidad_Cubierta' decimal(11,3) DEFAULT NULL,
    'dCantidad_Plataforma' decimal(11,3) DEFAULT NULL,
    'dCantHHGenerador' decimal(40,20) NOT NULL DEFAULT 0.00000000000000000000,
    'dCantidadAjustada' decimal(36,0) DEFAULT NULL,
    'sWbs' varchar(100) NOT NULL,
    'sNumeroActividad' varchar(20) NOT NULL,
    'dAjuste' decimal(40,20) DEFAULT NULL,
    'dCantHH' decimal(40,20) unsigned NOT NULL DEFAULT 0.00000000000000000000,
    'sNumeroOrden' varchar(35) NOT NULL,
    'iIdTarea' int(10) DEFAULT 1,
    'iIdActividad' int(11) DEFAULT 0,
    'lImprime' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Imprime en Actividades',
    'dCantPernocta' decimal(40,20) DEFAULT 0.00000000000000000000,
    PRIMARY KEY ('sContrato','dIdFecha','iIdDiario','sIdPersonal','sIdPernocta','sIdPlataforma','sAgrupaPersonal','sWbs','sNumeroActividad','sNumeroOrden'),
    KEY 'bitacoradepersonal_fk' ('sContrato','sIdPersonal'),
    KEY 'bitacoradepersonal_fk1' ('sIdPlataforma'),
    KEY 'bitacoradepersonal_fk2' ('sIdPernocta'),
    KEY 'sContrato' ('sContrato','dIdFecha','iIdDiario'),
    KEY 'bitacoradepersonal_fk3' ('sTipoPernocta'),
    KEY 'aa_fk_015' ('sContrato','sWbs','sNumeroActividad'),
    KEY 'ot_fk_045' ('sContrato','sNumeroOrden'),
    CONSTRAINT 'ot_fk_045' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'p_fk_006' FOREIGN KEY ('sIdPlataforma') REFERENCES 'plataformas' ('sIdPlataforma') ON UPDATE CASCADE,
    CONSTRAINT 'pl_fk_003' FOREIGN KEY ('sContrato', 'sIdPersonal') REFERENCES 'personal' ('sContrato', 'sIdPersonal') ON UPDATE CASCADE,
    CONSTRAINT 'pr_fk_006' FOREIGN KEY ('sIdPernocta') REFERENCES 'pernoctan' ('sIdPernocta') ON DELETE CASCADE,
    CONSTRAINT 'pro_fk_041' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Bitacora de Personal x Dia';
  ''';
}*/*/*/