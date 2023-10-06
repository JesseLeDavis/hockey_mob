// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

abstract class INotification {
  ///tracks if init has been called

  static final _firebaseMessaging = FirebaseMessaging.instance;
  static FirebaseMessaging get firebaseMessaging => _firebaseMessaging;
  static final Logger _logger = Logger();

  ///stores active users fcm token
  static String? _token;

  static Future<String?> initialize() async {
    await _firebaseMessaging.requestPermission(
      announcement: true,
    );

    final _token = await _firebaseMessaging.getToken();

    return _token;
  }

  static String get token {
    return _token ?? 'none';
  }

  static Future<void> subscribe(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
    } catch (e) {
      _logger.e(e);
    }
  }

  static Future<void> unsubscribe(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
    } catch (e) {
      _logger.e(
        'There was an error unsubscribing to a topic: $topic, ERROR: $e',
        e,
        StackTrace.current,
      );
    }
  }
}
