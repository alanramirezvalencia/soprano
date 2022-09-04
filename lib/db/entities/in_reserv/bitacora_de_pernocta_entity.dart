/**
import 'package:soprano/db/entities/entity.dart';

class BitacoraDePernoctaEntity implements Entity{

  BitacoraDePernoctaEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "bitacoradepernocta";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'bitacoradepernocta';
  CREATE TABLE 'bitacoradepernocta' (
    'sContrato'         varchar(15) NOT NULL DEFAULT '' COMMENT 'Numero de Contrato',
    'dIdFecha'          date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Pernocta',
    'sNumeroOrden'      varchar(35) NOT NULL DEFAULT '' COMMENT 'Numero de Orden',
    'sIdCuenta'         varchar(10) NOT NULL DEFAULT '' COMMENT 'Plataforma Pernocta',
    'iIdDiario'         int(11) NOT NULL DEFAULT 0 COMMENT 'Numero de Orden',
    'dCantidad'         double(8,4) DEFAULT 0.0000,
    'sIdCategoria'      varchar(4) NOT NULL,
    'sNumeroActividad'  varchar(20) NOT NULL DEFAULT 'SA',
    PRIMARY KEY ('sContrato','dIdFecha','sNumeroOrden','sIdCuenta','iIdDiario','sIdCategoria'),
    KEY 'sContrato' ('sContrato','dIdFecha','iIdDiario','sIdCuenta'),
    KEY 'ot_fk_019' ('sContrato','sNumeroOrden'),
    KEY 'c_fk_002' ('sIdCuenta'),
    CONSTRAINT 'c_fk_002' FOREIGN KEY ('sIdCuenta') REFERENCES 'cuentas' ('sIdCuenta') ON DELETE CASCADE,
    CONSTRAINT 'ot_fk_019' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_040' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ''';
}*/