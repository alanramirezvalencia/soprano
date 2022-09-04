// SHA-1 9E:93:05:9E:50:39:19:10:E1:1D:04:6E:8D:00:CB:6E:22:20:4C:AB
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


/// Manages control of the app's notification services.
class PushNotificationService {

  /// FirebaseMessaging instance
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  /// Device Token
  ///
  /// Identify the device to which you want to send a notification.
  /// This is independent of the current user on the device.
  /// It resets only if the application is reinstalled.
  static String? token;

  static final StreamController<String> _messageStream = StreamController.broadcast();

  static Stream<String> get messagesStream => _messageStream.stream;

  /// Identifies a notification received when the app is in the foreground.
  static Future _onMessageOpenApp(RemoteMessage message) async {
    //print('onMessageOpenApp Handler: ${message.messageId}');
    _messageStream.add(message.notification?.title ?? 'Control de Obra');
  }

  /// Identifies a notification received when the app is in the background.
  static Future _onBackgroundHandler(RemoteMessage message) async {
    //print('onBackgroundHandler Handler: ${message.messageId}');
    _messageStream.add(message.notification?.title ?? 'Control de Obra');
  }

  /// Identifies a notification received when the app is finished
  static Future _onMessageHandler(RemoteMessage message) async {
    //print('onMessageHandler Handler: ${message.messageId}');
    _messageStream.add(message.notification?.title ?? 'Control de Obra');
  }

  /// Initializes Firebase services, and configures its handlers
  static Future initializeApp() async{
    //Push notifications
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    //print('Firebase Token: $token\n');
    //Handlers
    FirebaseMessaging.onBackgroundMessage(_onBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);

    //Local notifications
  }

  /// Closes the identification of notifications that reach the device.
  static closeStreams() => _messageStream.close();
}