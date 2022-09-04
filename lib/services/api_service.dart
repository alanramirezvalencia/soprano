import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:app_control_de_obra/pages/login_page.dart';
import 'package:app_control_de_obra/utils/dialogs/alert_dialogs.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ApiService {

  /// Generic body for empty HTTP requests
  static const genericBody = {
    "is_valid":'',
    "user_id": '',
    "device_id": '',
    "session_token": '',
    "device_type": ''
  };

  static const Map<String, String>? defaultHeader = {};

  static const Object? defaultBody = {};

  static Future<void> postRequest({
    required BuildContext context,
    required String url,
    required ValueChanged<dynamic> onSuccessResponse,
    Map<String, String>? headers = defaultHeader,
    Object? body = defaultBody,
    bool notifyErrors = true,
    void Function()? tryOffline,
  }) async {
    var client = http.Client();
    try {
      var response = await client.post(
        Uri.parse(url),
        body: body,
        headers: headers,
      ).timeout(const Duration(seconds: 10));
      debugPrint("Http url: $url\nHttp parameters: ${body.toString()}\nHttp status: ${response.statusCode}\nHttp body: ${response.body.toString()}");
      var jsn = json.decode(response.body);
      if(jsn["message"] == "Token no valido"){
        debugPrint("Token descontinuado");
        Navigator.pushAndRemoveUntil( context, MaterialPageRoute(builder:(BuildContext ctx)=> const LoginPage()),(route)=>false);
      }
      else {
        onSuccessResponse.call(jsn);
      }
    } on TimeoutException {
      if(notifyErrors){
          errorDialog(context, content:"El servidor está tardando en responder");
      }
      if(tryOffline != null){ tryOffline.call(); }
    } on SocketException {
      if(notifyErrors){
        errorDialog(context, content:"Sin conexión al servidor");
      }
      if(tryOffline != null){ tryOffline.call(); }
    } on HttpException {
      if(notifyErrors){
        errorDialog(context, content:"Servidor fuera de servicio");
      }
      if(tryOffline != null){ tryOffline.call(); }
    } on FormatException {
      debugPrint("Error 409: Hubo un conflicto");
      if(notifyErrors){
        errorDialog(context, content:"Intentelo más tarde");
      }
      if(tryOffline != null){ tryOffline.call(); }
    } on HandshakeException {
      debugPrint("Error 400: Error desconocido");
      if(notifyErrors){
        errorDialog(context, content:"Intentelo más tarde");
      }
      if(tryOffline != null){ tryOffline.call(); }
    }
    finally { client.close(); }
  }
}