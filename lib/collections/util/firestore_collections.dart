class FirestoreCollections {
  const FirestoreCollections._();

  static String get userId {
    final userId = _userId;

    if (userId == null) {
      throw Exception('User not authorized to access this data');
    }

    return userId;
  }

  static String? _userId;

  static set userId(String userId) {
    _userId = userId;
  }

  static void deauthorize() {
    _userId = null;
  }
}
