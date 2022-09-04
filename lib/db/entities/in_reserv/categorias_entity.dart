/**
import 'package:soprano/db/entities/entity.dart';

class CategoriasEntity implements Entity{

  CategoriasEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "categorias";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'categorias';
  CREATE TABLE 'categorias' (
    'sIdCategoria' varchar(4) NOT NULL DEFAULT '' COMMENT 'Categoria ID',
    'dFechaVigencia' date NOT NULL COMMENT 'Fecha Vigencia Personal Tecnico Administrativo',
    'sDescripcion' varchar(120) NOT NULL DEFAULT '' COMMENT 'Descripcion',
    'sMiGrupoResumen' varchar(100) NOT NULL DEFAULT '' COMMENT 'Titulo del para Imprimir Resumen Categorias Reporte de Barco',
    'lPersonalAnexo' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Indica Anexo de Personal',
    'sDescripcionPernocta' varchar(100) DEFAULT NULL,
    'iOrden' int(11) DEFAULT 1,
    'sAgrupadorFinal' varchar(50) DEFAULT NULL,
    'sTdPu' varchar(2) DEFAULT 'NA',
    'lAnexoTipo' enum('Sin Anexo','Anexo Personal') NOT NULL DEFAULT 'Sin Anexo',
    PRIMARY KEY ('sIdCategoria','dFechaVigencia')
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Categorias';
  ''';
}*/