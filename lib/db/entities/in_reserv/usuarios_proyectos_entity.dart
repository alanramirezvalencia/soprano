/**
import 'package:soprano/db/entities/entity.dart';

class UsuariosProyectosEntity implements Entity{

  UsuariosProyectosEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "usuarios_proyectos";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'usuarios_proyectos';
CREATE TABLE 'usuarios_proyectos' (
  'sIdUsuario' varchar(10) NOT NULL COMMENT '/*Usuario',
  'sContrato' varchar(15) NOT NULL DEFAULT '' COMMENT '/*Contrato',
  PRIMARY KEY ('sIdUsuario','sContrato'),
  KEY 'contratosxusuario_fk' ('sContrato'),
  CONSTRAINT 'fk_usuariosxproyecto' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE,
  CONSTRAINT 'fk_usuariosxproyecto2' FOREIGN KEY ('sIdUsuario') REFERENCES 'usuarios' ('sIdUsuario') ON UPDATE CASCADE,
  CONSTRAINT 'pro_fk_063' FOREIGN KEY ('sContrato') REFERENCES 'rd_proyectos' ('sContrato') ON UPDATE CASCADE,
  CONSTRAINT 'u_fk_012' FOREIGN KEY ('sIdUsuario') REFERENCES 'usuarios' ('sIdUsuario') ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contratos x Usuario';
  ''';
}*/*/*/