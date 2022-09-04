/**
import 'package:soprano/db/entities/entity.dart';

class BitacoraDeMaterialesEntity implements Entity{

  BitacoraDeMaterialesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "bitacorademateriales";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'bitacorademateriales';
  CREATE TABLE 'bitacorademateriales' (
    'sContrato'           varchar(15)   NOT NULL DEFAULT ''           COMMENT 'Contrato',
    'dIdFecha'            date          NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'iIdDiario'           int(10)       NOT NULL DEFAULT 0            COMMENT 'Id Diario',
    'sWbs'                varchar(100)  NOT NULL DEFAULT ''           COMMENT 'sWbs',
    'iItemOrden'          varchar(200)  DEFAULT NULL,
    'sAnexo'              varchar(5)    NOT NULL                      COMMENT 'Id Anexo de material',
    'IdMaterial'          int(25)       NOT NULL                      COMMENT 'Material',
    'mDescripcion'        mediumtext    NOT NULL                      COMMENT 'Descripcion del material',
    'iIdMedida'           int(5)        DEFAULT NULL                  COMMENT '10',
    'dCantidad'           decimal(12,4) NOT NULL DEFAULT 0.0000       COMMENT 'Cantidad',
    'dCostoMN'            decimal(18,2) NOT NULL DEFAULT 0.00         COMMENT 'Costo MN',
    'dCostoDLL'           decimal(18,2) NOT NULL DEFAULT 0.00         COMMENT 'Costo DLL',
    'dCantidadComercial'  decimal(12,4) NOT NULL DEFAULT 0.0000       COMMENT 'Cantidad Comercial',
    'idmat'               int(11)       NOT NULL AUTO_INCREMENT,
    'sTrazabilidad'       varchar(50)   NOT NULL DEFAULT ''           COMMENT 'Trazabilidad',
    'sHoraInicio'         varchar(5)    DEFAULT NULL,
    'sHoraFinal'          varchar(5)    DEFAULT NULL,
    'sTrazabilidadAux'    varchar(100)  DEFAULT NULL                  COMMENT 'trazabilidad editable hibernia',
    'sColumnaAux'         varchar(100)  DEFAULT NULL,
    'sTextoAux'           varchar(100)  DEFAULT NULL,
    'sPertenece'          varchar(200)  NOT NULL DEFAULT '',
    'sNumeroOrden'        varchar(35)   DEFAULT NULL,
    'sIdPernocta'         varchar(10)   DEFAULT NULL,
    'sTipoAnexo'          varchar(2)    DEFAULT NULL,
    PRIMARY KEY ('idmat'),
    KEY 'sContrato' ('sContrato','dIdFecha','iIdDiario','sWbs'),
    KEY 'a_fk_005'  ('sAnexo'),
    KEY 'aa_fk_029' ('sContrato','sWbs'),
    KEY 'ot_fk_017' ('sContrato','sNumeroOrden'),
    KEY 'pr_fk_005' ('sIdPernocta'),
    KEY 'm_fk_009'  ('iIdMedida'),
    CONSTRAINT 'a_fk_005'   FOREIGN KEY ('sAnexo')                    REFERENCES 'anexos' ('sAnexo') ON UPDATE CASCADE,
    CONSTRAINT 'm_fk_009'   FOREIGN KEY ('iIdMedida')                 REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE,
    CONSTRAINT 'ot_fk_017'  FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'pr_fk_005'  FOREIGN KEY ('sIdPernocta')               REFERENCES 'pernoctan' ('sIdPernocta') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_038' FOREIGN KEY ('sContrato')                 REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='Salida de Materiales';
  ''';
}*/