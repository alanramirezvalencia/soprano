/**
import 'package:soprano/db/entities/entity.dart';

class CuentasEntity implements Entity{

  CuentasEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "cuentas";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'cuentas';
  CREATE TABLE 'cuentas' (
    'sIdCuenta' varchar(10) NOT NULL DEFAULT '' COMMENT 'ID de Cuenta',
    'sIdPernocta' varchar(10) NOT NULL DEFAULT '' COMMENT 'Numero de Partida de la Pernocta.',
    'sDescripcion' varchar(250) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    'sDescripcionMascara' varchar(250) NOT NULL DEFAULT '',
    'iIdMedida' int(5) DEFAULT NULL,
    'dCostoMN' double(15,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo MN',
    'dCostoDLL' double(15,2) NOT NULL DEFAULT 0.00 COMMENT 'Costo DLL',
    'dVentaMN' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Venta MN',
    'dVentaDLL' decimal(18,2) NOT NULL DEFAULT 0.00 COMMENT 'Venta DLL',
    'sIdPadre' varchar(2) NOT NULL DEFAULT '',
    'iOrden' tinyint(4) NOT NULL DEFAULT 0,
    PRIMARY KEY ('sIdCuenta'),
    KEY 'sIdPernocta' ('sIdPernocta'),
    CONSTRAINT 'pr_fk_008' FOREIGN KEY ('sIdPernocta') REFERENCES 'pernoctan' ('sIdPernocta') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Cuentas';
  ''';
}*/