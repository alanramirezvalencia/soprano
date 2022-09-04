/**
import 'package:soprano/db/entities/entity.dart';

class UsuariosEntity implements Entity{

  UsuariosEntity(this.map);

  @override
  Map<String, String> map;

  @override
  String get tableName => "usuarios";

  static get sqlCreate => '''
  DROP TABLE IF EXISTS 'usuarios';
CREATE TABLE 'usuarios' (
  'sIdUsuario' varchar(10) NOT NULL DEFAULT '' COMMENT 'Id Usuario',
  'lAutorizaPedido' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Autoriza Ordenes de Compra',
  'sPassword' longblob NOT NULL COMMENT 'Contraseña',
  'sPasswordEspecial' longblob DEFAULT NULL,
  'sNombre' varchar(50) NOT NULL DEFAULT '' COMMENT 'Nombre Completo',
  'sMail' varchar(50) DEFAULT '*' COMMENT 'Correo Electronico',
  'Telefono' varchar(15) DEFAULT NULL,
  'sIdDepartamento' varchar(4) DEFAULT NULL COMMENT '/*Departamento',
  'sPuesto' varchar(25) NOT NULL DEFAULT '' COMMENT 'Puesto',
  'lActivo' enum('Si','No') DEFAULT 'No' COMMENT 'Activo',
  'sIp' varchar(20) DEFAULT NULL COMMENT 'IP',
  'sIdGrupo' varchar(15) DEFAULT NULL COMMENT '/*Grupo',
  'lValida' enum('Si','No') DEFAULT 'No' COMMENT 'Valida ?',
  'lAcceso' enum('Si','No') DEFAULT 'Si' COMMENT 'Acceso al Sistema',
  'lEnviaCorreo' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Enviar correos al autorizar Reportes Diarios',
  'sDestino' varchar(250) NOT NULL DEFAULT '' COMMENT 'Direcciones destino de correo electronico',
  'sCC' varchar(250) NOT NULL DEFAULT '' COMMENT 'Direciones Con Copia del correo electronico',
  'sCCO' varchar(250) NOT NULL DEFAULT '' COMMENT 'Direcciones de Correo con Copia Oculta ',
  'sAsunto' varchar(250) NOT NULL DEFAULT '' COMMENT 'Asunto del correo electronico',
  'sAdjunto' varchar(250) NOT NULL DEFAULT '' COMMENT 'Ruta del archivo adjunto para correo electronico',
  'sContenido' varchar(250) NOT NULL DEFAULT '' COMMENT 'Texto del correo electronico',
  'lAsignaFrentes' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Opcion para asignar en automatico el Contrato y Frentes al crearlos.',
  'lRevisaBarco' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Revisa Opciones de Barco',
  'lRealizaAjustes' enum('Si','No') NOT NULL DEFAULT 'No' COMMENT 'Realiza Ajustes Avances Fisicos de Partidas, en Reporte Diario',
  'sAlerta' varchar(150) NOT NULL DEFAULT '' COMMENT 'Alerta de cambios de permisos',
  'lGenReqF' enum('Si','No') DEFAULT NULL,
  'AplicarMantenimiento' enum('Si','No') DEFAULT 'No' COMMENT 'Mantenimiento a equipos',
  'IdDepartamento' int(11) DEFAULT NULL COMMENT '/*Departamento.',
  PRIMARY KEY ('sIdUsuario'),
  KEY 'usuarios_fk' ('sIdDepartamento'),
  KEY 'usuarios_fk1' ('sIdGrupo'),
  KEY 'usuarios_fk_departamentos' ('IdDepartamento'),
  CONSTRAINT 'usuarios_fk_departamentos' FOREIGN KEY ('IdDepartamento') REFERENCES 'master_departamento' ('IdDepartamento') ON UPDATE CASCADE,
  CONSTRAINT 'usuarios_fk_grupos' FOREIGN KEY ('sIdGrupo') REFERENCES 'grupos' ('sIdGrupo') ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Usuarios';
  ''';
}*/*/*/*/