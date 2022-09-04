import 'package:shared_preferences/shared_preferences.dart';

/// Gestiona la información del usuario, sus permisos, y su empresa
class UserPreferences {

  /// gestiona las preferencias del usuario almacenadas en el dispositivo
  SharedPreferences? preferences;

  ///Constructor por defecto
  UserPreferences();

  // Configuración del usuario y empresa

  /// Obtiene el correo del usuario actual
  String get correoDelUsuario => preferences?.getString("correoDeUsuario") ?? "";

  /// Obtiene el nombre del proyecto actual
  String get proyecto => preferences?.getString("proyecto") ?? "";

  /// Obtiene el nombre del proyecto actual
  String get subproyecto => preferences?.getString("subproyecto") ?? "";

  /// Obtiene los frentes de trabajo
  String get frentes => preferences?.getString("frentes") ?? "";

  /// Obtiene la descripción del subproyecto actual
  String get descripcionSubproyecto => preferences?.getString("descripcionSubproyecto") ?? "";

  /// Obtiene el token de conexión al API REST
  String get token => preferences?.getString("token") ?? "";

  /// Obtiene el frente de trabajo actual
  String get frenteDeTrabajo => preferences?.getString("frenteDeTrabajo") ?? "";

  /// Permite saber si la aplicación debe mostrar un mensaje cuando estamos en modo offline
  bool get offlineMode => preferences?.getBool("offlineMOde")?? false;


  /// Configura el nombre del usuario actual
  set correoDelUsuario(String s) => preferences?.setString("correoDeUsuario", s);

  /// Configura el nombre del proyecto actual
  set proyecto(String s) => preferences?.setString("proyecto", s);

  /// Configura el nombre del subproyecto actual
  set subproyecto(String s) => preferences?.setString("subproyecto", s);

  /// Configura los frentes de trabajo actuales
  set frentes(String s) => preferences?.setString("frentes", s);

  /// Configura la descripción del subproyecto actual
  set descripcionSubproyecto(String s) => preferences?.setString("descripcionSubproyecto", s);

  ///Configura el token de conexión al API REST
  set token(String s) => preferences?.setString("token", s);

  ///Configura el frente de trabajo actual
  set frenteDeTrabajo(String s) => preferences?.setString("frenteDeTrabajo", s);

  /// Permite saber si la aplicación debe mostrar un mensaje cuando estamos en modo offline
  set offlineMode(bool b) => preferences?.setBool("offlineMOde", b);

  /// Carga en memoria las preferencias de usuario
  Future<void> loadPreferences() async => preferences = await SharedPreferences.getInstance();

  /// Nos indica si existe un usario actual almacenado en el dispositivo
  bool isThereAUserLoaded() {
    return correoDelUsuario != "";
  }
}