// import 'package:flutter_project_template_firebase/infrastructure/repo_logger/get_method_info.dart';
// import 'package:injectable/injectable.dart';
// import 'package:logger/logger.dart';

// @injectable
// class RepoLogger {
//   final logger = Logger();

//   Future<T> future<T>(Future<T> Function() callback) async {
//     GetMethodInfo? _currentMethod;
//     try {
//       _currentMethod = GetMethodInfo(1);
//     } catch (e) {
//       logger.e(
//         '[REPO]  There was an error getting the current method: $e',
//         StackTrace.current,
//       );
//     }

//     logger.d('[REPO]  $_currentMethod', _currentMethod?.fileName);

//     try {
//       final _result = await callback();

//       logger.d(
//         '[REPO]  ${_currentMethod?.functionName}: '
//         'Returning ${_result.runtimeType}',
//         _currentMethod?.fileName,
//       );
//       return _result;
//     } catch (e) {
//       logger.e(
//         'There was an error with $_currentMethod, error: $e',
//         StackTrace.current,
//       );
//       rethrow;
//     }
//   }

//   Stream<T> stream<T>(Stream<T> Function() callback) async* {
//     GetMethodInfo? _currentMethod;
//     try {
//       _currentMethod = GetMethodInfo(1);
//     } catch (e) {
//       logger.e(
//         '[REPO]  There was an error getting the current method: $e',
//         StackTrace.current,
//       );
//     }

//     logger.d('[REPO]  $_currentMethod', _currentMethod?.fileName);
//     final _result = callback();
//     logger.d(
//       '[REPO]  ${_currentMethod?.functionName}: '
//       'Returning ${_result.runtimeType}',
//       _currentMethod?.fileName,
//     );
//     yield* _result;
//   }

//   void callVoid(void Function() callback) {
//     GetMethodInfo? _currentMethod;
//     try {
//       _currentMethod = GetMethodInfo(1);
//     } catch (e) {
//       logger.e(
//         '[REPO]  There was an error getting the current method: $e',
//         StackTrace.current,
//       );
//     }

//     logger.d('[REPO]  $_currentMethod', _currentMethod?.fileName);
//     callback();
//     logger.d('Finished VOID call', _currentMethod?.fileName);
//   }
// }
