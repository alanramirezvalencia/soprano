/**
import 'package:soprano/db/entities/entity.dart';

class EquiposEntity implements Entity{

  EquiposEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "equipos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'equipos';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'equipos' (
  'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
  'sIdEquipo' varchar(25) NOT NULL DEFAULT '' COMMENT 'Equipo ID',
  'iItemOrden' int(11) NOT NULL DEFAULT 0 COMMENT 'Item Orden',
  'sDescripcion' varchar(750) NOT NULL DEFAULT '' COMMENT 'Descripcion',
  'sIdTipoEquipo' varchar(4) NOT NULL DEFAULT '' COMMENT '/*Tipo de Equipo',
  'IdMedida' int(5) NOT NULL COMMENT 'Medida',
  'dCantidad' double(12,5) NOT NULL DEFAULT 0.00000 COMMENT 'Cantidad',
  'dCostoMN' decimal(18,2) DEFAULT 0.00 COMMENT 'Costo MN',
  'dCostoDLL' decimal(18,2) DEFAULT 0.00 COMMENT 'Costo DLL',
  'dVentaMN' decimal(18,2) DEFAULT 0.00 COMMENT 'Venta MN',
  'dVentaDLL' decimal(18,2) DEFAULT 0.00 COMMENT 'Venta DLL',
  'dFechaInicio' date DEFAULT '0000-00-00' COMMENT 'Fecha de Inicio',
  'dFechaFinal' date DEFAULT '0000-00-00' COMMENT 'Fecha Final',
  'lProrrateo' enum('Si','No') NOT NULL DEFAULT 'Si' COMMENT 'Prorrateo',
  'lCobro' enum('Si','No') NOT NULL DEFAULT 'Si',
  'lImprime' enum('Si','No') NOT NULL DEFAULT 'Si',
  'iJornada' int(2) NOT NULL DEFAULT 24 COMMENT 'Jornada',
  'lAplicaDiesel' enum('Si','No') DEFAULT 'No',
  'dProgramado' float DEFAULT 0,
  PRIMARY KEY ('sContrato','sIdEquipo'),
  KEY 'equipos_fk1' ('sIdTipoEquipo'),
  KEY 'm_fk_013' ('IdMedida'),
  CONSTRAINT 'm_fk_013' FOREIGN KEY ('IdMedida') REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE,
  CONSTRAINT 'pro_fk_052' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ''';
}*/*/