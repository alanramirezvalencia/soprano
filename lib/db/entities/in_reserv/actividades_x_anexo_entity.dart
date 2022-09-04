/**
import 'package:soprano/db/entities/entity.dart';

class ActividadesXAnexoEntiy implements Entity{

  ActividadesXAnexoEntiy(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "actividadesxanexo";

  String get sContrato => map['sContrato'] as String;
  String get sIdConvenio => map['sIdConvenio'] as String;
  String get sNumeroOrden => map['sNumeroOrden'] as String;
  String get iNivel => map['iNivel'] as String;
  String get sSimbolo => map['sSimbolo'] as String;
  String get sWbs => map['sWbs'] as String;
  String get sWbsAnterior => map['sWbsAnterior'] as String;
  String get sNumeroActividad => map['sNumeroActividad'] as String;
  String get sTipoActividad => map['sTipoActividad'] as String;
  String get sTipoAnexo => map['sTipoAnexo'] as String;
  String get sEspecificacion => map['sEspecificacion'] as String;
  String get sActividadAnterior => map['sActividadAnterior'] as String;
  String get iItemOrden => map['iItemOrden'] as String;
  String get mDescripcion => map['mDescripcion'] as String;
  String get dFechaInicio => map['dFechaInicio'] as String;
  String get dDuracion => map['dDuracion'] as String;
  String get dFechaFinal => map['dFechaFinal'] as String;
  String get dPonderado => map['dPonderado'] as String;
  String get dCostoMN => map['dCostoMN'] as String;
  String get dCostoDll => map['dCostoDll'] as String;
  String get dVentaMN => map['dVentaMN'] as String;
  String get dVentaDLL => map['dVentaDLL'] as String;
  String get lCalculo => map['lCalculo'] as String;
  String get idMedida => map['IdMedida'] as String;
  String get dCantidadAnexo => map['dCantidadAnexo'] as String;
  String get dCargado => map['dCargado'] as String;
  String get dInstalado => map['dInstalado'] as String;
  String get dExcedente => map['dExcedente'] as String;
  String get iColor => map['iColor'] as String;
  String get lExtraordinario => map['lExtraordinario'] as String;
  String get sIdFase => map['sIdFase'] as String;
  String get sAnexo => map['sAnexo'] as String;
  String get sPred => map['sPred'] as String;
  String get sSucesor => map['sSucesor'] as String;
  String get sWbsPU => map['sWbsPU'] as String;
  String get tipoCalculo => map['TipoCalculo'] as String;
  String get lCalculoBoleta => map['lCalculoBoleta'] as String;
  String get lPersonalBoleta => map['lPersonalBoleta'] as String;
  String get lAplicaBarco => map['lAplicaBarco'] as String;
  String get lEstatus => map['lEstatus'] as String;
  String get sMedida => map['sMedida'] as String;
  String get descripcionCorta => map['DescripcionCorta'] as String;
  String get lAplicaPaq => map['lAplicaPaq'] as String;

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'actividadesxanexo';
  CREATE TABLE 'actividadesxanexo' (
    'sContrato'         varchar(15)     NOT NULL DEFAULT ''       COMMENT 'Contrato',
    'sIdConvenio'       varchar(5)      NOT NULL DEFAULT ''       COMMENT 'Convenio',
    'sNumeroOrden'      varchar(35)     NOT NULL,
    'iNivel'            int(2)          NOT NULL DEFAULT 0        COMMENT 'Nivel',
    'sSimbolo'          char(1)         NOT NULL DEFAULT ''       COMMENT 'Simbolo',
    'sWbs'              varchar(100)    NOT NULL DEFAULT ''       COMMENT 'sWbs',
    'sWbsAnterior'      varchar(100)    NOT NULL DEFAULT ''       COMMENT 'Wbs Anterior',
    'sNumeroActividad'  varchar(20)     NOT NULL DEFAULT ''       COMMENT 'Numer de Actividad',
    'sTipoActividad'    enum('Paquete','Actividad') NOT NULL DEFAULT 'Actividad' COMMENT 'Tipo de Actividad',
    'sTipoAnexo'        varchar(5)      NOT NULL DEFAULT ''       COMMENT 'Tipo Anexo PU u Optativo',
    'sEspecificacion'   varchar(35)     NOT NULL DEFAULT ''       COMMENT 'Especificacion',
    'sActividadAnterior' varchar(20)    NOT NULL DEFAULT ''       COMMENT 'Actividad Anterior',
    'iItemOrden'        varchar(200)    NOT NULL DEFAULT ''       COMMENT 'Orden',
    'mDescripcion'      mediumtext      NOT NULL                  COMMENT 'Descripcion',
    'dFechaInicio'      date            NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha de Inicio',
    'dDuracion'         decimal(8,4)    NOT NULL DEFAULT 0.0000   COMMENT 'Duracion',
    'dFechaFinal'       date            NOT NULL DEFAULT '0000-00-00' COMMENT 'Fecha Final',
    'dPonderado'        decimal(8,4)    NOT NULL DEFAULT 0.0000   COMMENT 'Ponderado',
    'dCostoMN'          double(15,2)    NOT NULL DEFAULT 0.00     COMMENT 'Costo MN',
    'dCostoDll'         double(15,2)    NOT NULL DEFAULT 0.00     COMMENT 'Costo DLL',
    'dVentaMN'          double(15,2)    NOT NULL DEFAULT 0.00     COMMENT 'Venta MN',
    'dVentaDLL'         double(15,2)    NOT NULL DEFAULT 0.00     COMMENT 'Venta DLL',
    'lCalculo'          enum('Si','No') NOT NULL DEFAULT 'Si'     COMMENT 'Calculo',
    'IdMedida'          int(5)          NOT NULL                  COMMENT 'Unidad de Medida',
    'dCantidadAnexo'    double(13,5)    NOT NULL DEFAULT 0.00000  COMMENT 'Cantidad Anexo',
    'dCargado'          double(13,5)    NOT NULL DEFAULT 0.00000  COMMENT 'Cargado',
    'dInstalado'        double(13,5)    NOT NULL DEFAULT 0.00000  COMMENT 'Instalado',
    'dExcedente'        double(13,5)    NOT NULL DEFAULT 0.00000  COMMENT 'Excedente',
    'iColor'            int(2)          NOT NULL DEFAULT 3        COMMENT 'Color',
    'lExtraordinario'   enum('Si','No') NOT NULL DEFAULT 'No'     COMMENT 'Extraordinario',
    'sIdFase'           varchar(5)      NOT NULL DEFAULT ''       COMMENT 'Fase',
    'sAnexo'            varchar(5)      NOT NULL DEFAULT ''       COMMENT 'Anexo de la Partida.',
    'sPred'             varchar(250)    DEFAULT '*'               COMMENT 'Campo para calculo de Gantt',
    'sSucesor'          varchar(20)     DEFAULT '*'               COMMENT 'Campo para calculo de Gantt',
    'sWbsPU'            varchar(100)    NOT NULL DEFAULT ''       COMMENT 'Wbs por Partida de PU desarrollo CAMSA',
    'TipoCalculo'       enum('Normal','Periodo') DEFAULT 'Normal',
    'lCalculoBoleta'    enum('Unidad','Fraccion') DEFAULT 'Unidad',
    'lPersonalBoleta'   enum('Contenido en Linea','Cantidad por Unidad','Personal Libranza') DEFAULT 'Contenido en Linea',
    'lAplicaBarco'      enum('Si','No') DEFAULT 'No',
    'lEstatus'          enum('RENTABLE','NO RENTABLE','BAJA RENTABILIDAD','REPETIDA') DEFAULT 'RENTABLE',
    'sMedida'           varchar(10)     NOT NULL DEFAULT ''       COMMENT 'Unidad de Medida',
    'DescripcionCorta'  text            DEFAULT NULL,
    'lAplicaPaq'        enum('Si','No') DEFAULT 'No',
    PRIMARY KEY ('sContrato','sIdConvenio','sWbs','sNumeroActividad','sTipoActividad'),
    KEY 'actividadesxanexo_fk' ('sIdConvenio'),
    KEY 'sContrato'   ('sContrato','sWbs'),
    KEY 'sContrato_2' ('sContrato','sIdConvenio','sWbs'),
    KEY 'sContrato_3' ('sContrato','sWbs','sNumeroActividad'),
    KEY 'sAnexo'      ('sAnexo'),
    KEY 'sContrato_4' ('sContrato','sIdConvenio'),
    KEY 'con_fk_002'  ('sContrato','sIdConvenio','sNumeroOrden'),
    KEY 'fp_fk_006'   ('sIdFase'),
    KEY 'ot_fk_001'   ('sContrato','sNumeroOrden'),
    KEY 'm_fk_001'    ('IdMedida'),
    KEY 'sContrato_5' ('sContrato','sWbs','sNumeroActividad','sTipoActividad'),
    CONSTRAINT 'a_fk_002'   FOREIGN KEY ('sAnexo') REFERENCES 'anexos' ('sAnexo') ON UPDATE CASCADE,
    CONSTRAINT 'con_fk_002' FOREIGN KEY ('sContrato', 'sIdConvenio') REFERENCES 'convenios' ('sContrato', 'sIdConvenio') ON UPDATE CASCADE,
    CONSTRAINT 'm_fk_001'   FOREIGN KEY ('IdMedida') REFERENCES 'master_medidas' ('IdMedida') ON UPDATE CASCADE,
    CONSTRAINT 'pro_fk_016' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Actividades x Orden de Trabajo';
  ''';
}*/