import 'package:soprano/db/entities/in_production/reporte_diario_entity.dart';
import 'package:soprano/db/validators/validator.dart';
import 'package:flutter/material.dart';

class ReporteDiarioValidator extends Validator{

  final ReporteDiarioEntity report;
  ReporteDiarioValidator(this.report);

  Future<bool> validateUpload(BuildContext context) async {
    if(report.dIdFecha.isEmpty){
      fails.add("Fecha");
      canContinue = false;
    }
    if(report.sIdTurno.isEmpty){
      fails.add("Turno");
      canContinue = false;
    }
    if(report.sTiempo.isEmpty){
      fails.add("Clima");
    }
    if(report.sTransporte.isEmpty){
      fails.add("Transporte");
    }
    if(report.sOperacionInicio.isEmpty || report.sOperacionFinal.isEmpty){
      fails.add("Horario laboral");
    }
    if(report.sFinalPlatica.isEmpty || report.sInicioPlatica.isEmpty){
      fails.add("Horario de la plática de seguridad");
    }
    if(report.sTema.isEmpty){
      fails.add("Tema de la pática de seguridad");
    }
    return await validate(context);
  }

}