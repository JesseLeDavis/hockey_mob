import 'package:flutter/material.dart';

import 'package:another_flushbar/flushbar.dart';



class LocalNotificationService {
  static Flushbar successFactory({
    required String title,
    required String msg,
    Duration? duration = const Duration(seconds: 5),
    Function(Flushbar<dynamic>)? onTap,
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(16),
      borderRadius: BorderRadius.circular(16),
      flushbarPosition: FlushbarPosition.TOP,
     
    
     
      backgroundColor: Colors.white,
      duration: duration,
      onTap: onTap,
    );
  }

  static Flushbar errorFactory({
    required String title,
    required String msg,
    Duration? duration = const Duration(seconds: 5),
    Function(Flushbar<dynamic>)? onTap,
  }) {
    return Flushbar(
      margin: const EdgeInsets.all(16),
      borderRadius: BorderRadius.circular(16),
      flushbarPosition: FlushbarPosition.TOP,
      titleText: Text(
        title,
       
      ),
      messageText: Text(
        msg,
       
      ),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      backgroundColor: Colors.white,
      onTap: onTap,
      duration: duration,
    );
  }
}
