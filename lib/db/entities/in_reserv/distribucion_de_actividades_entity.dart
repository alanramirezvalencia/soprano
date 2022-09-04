/**
import 'package:soprano/db/entities/entity.dart';

class DistribucionDeActividadesEntity implements Entity{

  DistribucionDeActividadesEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "direcciones";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'distribuciondeactividades';
  CREATE TABLE 'distribuciondeactividades' (
    'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT 'Contrato',
    'sIdConvenio' varchar(5) NOT NULL DEFAULT '' COMMENT 'Convenio',
    'dIdFecha' date NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha',
    'sNumeroOrden' varchar(35) NOT NULL DEFAULT '' COMMENT 'Numero de Orden',
    'sPaquete' varchar(10) NOT NULL DEFAULT '' COMMENT 'Paquete',
    'sWbs' varchar(100) NOT NULL DEFAULT '' COMMENT 'sWbs',
    'sNumeroActividad' varchar(20) NOT NULL COMMENT 'Numero de Activdad',
    'iNumeroGerencial' int(11) NOT NULL DEFAULT 3,
    'dCantidad' double(12,5) NOT NULL DEFAULT 0.00000 COMMENT 'Cantidad',
    'sTipoAnexo' varchar(2) DEFAULT NULL COMMENT 'Tipo Anexo',
    PRIMARY KEY ('sContrato','sIdConvenio','dIdFecha','sNumeroOrden','sPaquete','sWbs','sNumeroActividad','iNumeroGerencial'),
    KEY 'distribuciondeactividades_fk' ('sContrato','sIdConvenio','sNumeroOrden','sWbs'),
    KEY 'ot_fk_024' ('sContrato','sNumeroOrden'),
    KEY 'aa_fk_018' ('sContrato','sIdConvenio','sWbs','sNumeroActividad'),
    KEY 'sContrato' ('sContrato','sIdConvenio','sWbs','sNumeroActividad','sNumeroOrden'),
    CONSTRAINT 'con_fk_014' FOREIGN KEY ('sContrato', 'sIdConvenio', 'sNumeroOrden') REFERENCES 'convenios' ('sContrato', 'sIdConvenio', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'ot_fk_024' FOREIGN KEY ('sContrato', 'sNumeroOrden') REFERENCES 'ordenesdetrabajo' ('sContrato', 'sNumeroOrden') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_049' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Distribucion de Actividades';
  ''';
}*/