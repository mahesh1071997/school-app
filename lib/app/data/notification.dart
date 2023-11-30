import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../../firebase_options.dart';
import '../routes/app_pages.dart';

late  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();
final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;


/*class FCM {







  void _showNotification(String title, String body) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
    );

    const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);


    //
    // await flutterLocalNotificationsPlugin.show(
    //   0, // Notification ID
    //   title,
    //   body,
    //   platformChannelSpecifics,
    // );
  }

  Future<void> setupInteractedMessage() async {
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        _handleMessage(message);
      }
    });
  }
  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      _showNotification(message.notification!.title!, message.notification!.body!);
    }
  }

  setNotifications() async{





    FirebaseMessaging.onMessage.listen(
          (RemoteMessage message) async {

            if (kDebugMode) {
              print('Handling a foreground message: ${message.messageId}');
              print('Message data: ${message.data}');
              print('Message notification: ${message.notification?.title}');
              print('Message notification: ${message.notification?.body}');
            }
            Get.rawSnackbar(message: "onMessage data ${message.data}");
      },
    );
    // With this token you can test it easily on your phone
  }

  dispose() {

  }






}*/

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupFlutterNotifications();
  showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
  if (kDebugMode) {
    print("firebaseMessagingBackgroundHandlerHandling a background message: ${message.messageId}");
    print('firebaseMessagingBackgroundHandlerMessage data: ${message.data}');

    print('firebaseMessagingBackgroundHandlerMessage notification: ${message.notification?.title}');
    print('firebaseMessagingBackgroundHandlerMessage notification: ${message.notification?.body}');
  }

}

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;

Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }
  channel = const AndroidNotificationChannel(
    'high_importance_channelIDABMiniplex123', // id
    'High Importance NotificationsABMiniplex', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  /// Create an Android Notification Channel.
  ///
  /// We use this channel in the `AndroidManifest.xml` file to override the
  /// default FCM channel to enable heads up notifications.
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  /// Update the iOS foreground notification presentation options to allow
  /// heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}

void showFlutterNotification(RemoteMessage message) {
  // if (kDebugMode) {
  //   print('Handling a foreground message: ${message.messageId}');
  //   print('Message data: ${message.data}');
  //   print('Message notification: ${message.notification?.title}');
  //   print('Message notification: ${message.notification?.body}');
  // }
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null && !kIsWeb) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,category: AndroidNotificationCategory.reminder,
          // TODO add a proper drawable resource to android, for now using
          //      one that already exists in example app.
          icon: "ic_stat_ab_miniplex",colorized: true
        ),
      ),
    );
  }
}

String? initialMessage;
bool _resolved = false;

loadFirstInit()async{
  NotificationSettings settings = await _firebaseMessaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }

  if (kDebugMode) {
    print('Permission granted: ${settings.authorizationStatus}');
  }
  String? token = await _firebaseMessaging.getToken();

  if (kDebugMode) {
    print('Registration Token Android=$token');
  }

  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings("@drawable/ic_stat_ic_notification"); // Replace with your app's icon


  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  FirebaseMessaging.instance.getInitialMessage().then(
        (value) {
          _resolved = true;
          initialMessage = value?.data.toString();
        },
  );


  FirebaseMessaging.onMessage.listen(showFlutterNotification);

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('A new onMessageOpenedApp event was published!');
   Get.toNamed(Routes.HOME);
  });
}





