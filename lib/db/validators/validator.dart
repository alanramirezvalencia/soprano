import 'package:flutter/material.dart';

import '../../utils/box_decoration_models.dart';
import '../../utils/white_section_1.dart';

abstract class Validator {
  List<String> fails = [];
  bool canContinue = false;

  Future<bool> validate(BuildContext ctx) async {
    if(fails.isNotEmpty){
      await _showErrors(ctx);
      return canContinue;
    } else {
      debugPrint("2Can continue: $canContinue");
      return true;
    }
  }

  Future<void> _showErrors(BuildContext ctx) async => await showDialog(context: ctx, builder: (c)=> Dialog(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      width: double.infinity,
      height: fails.length*14.30 + 155,
      child: WhiteSection1(
        "Valores Vacíos",
        children: [
          Text(_errors()),
          const SizedBox(height: 16),
          Row( children: [
            const Expanded(child: SizedBox()),
            if(canContinue) MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: (){
                Navigator.pop(ctx);
              },
              child: Container(
                decoration: blueBoxDecoration,
                padding: const EdgeInsets.all(8),
                child: const Text('Continuar',
                  style:TextStyle(fontWeight:FontWeight.bold, color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(width: 8,),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: (){
                canContinue = false;
                Navigator.pop(ctx);
              },
              child: Container(
                decoration: blueBoxDecoration,
                padding: const EdgeInsets.all(8),
                child: const Text('Seguir Editando',
                  style:TextStyle(fontWeight:FontWeight.bold, color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ]),
        ],
      ),
    ),
  ));

  String _errors(){
    String s = "";
    for(var error in fails){
      s += "* " + error + "\n";
    }
    return s.trim();
  }
}