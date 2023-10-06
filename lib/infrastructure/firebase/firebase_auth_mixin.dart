// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

typedef DataType = Map<String, dynamic>;

/// provides access to:
///
/// - collection
/// - doc
/// - batch
/// - userId
mixin FirebaseAuthMixin {
  final _auth = FirebaseAuth.instance;
  static final _functions = FirebaseFunctions.instance;
  static final _storage = FirebaseStorage.instance;

  String? get userId => _auth.currentUser?.uid;
  String? get phoneNumber => _auth.currentUser?.phoneNumber;

  FirebaseAuth get auth => _auth;

  HttpsCallable Function(String, {HttpsCallableOptions? options})
      get httpsCallable => _functions.httpsCallable;

  HttpsCallableOptions httpsCallableOptions({
    Duration timeout = const Duration(seconds: 5),
  }) =>
      HttpsCallableOptions(timeout: timeout);

  Reference storage([String? path]) => _storage.ref(path);
}
