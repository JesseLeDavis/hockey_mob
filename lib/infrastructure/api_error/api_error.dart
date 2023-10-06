import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/infrastructure/local_notification/local_notification_service.dart';

enum ApiError {
  unknownError,
  networkGeneral,
  badFormatResponse,
  firebaseCurrentUserFailure,
  userMissingEmail,
  cannotFindOwnerOrg,
  userAlreadyExists,
  userDosntExist,
  incorrectPassword
}

extension ApiErrorExtension on ApiError {
  static ApiError errorFromString(String text) {
    switch (text) {
      case 'The password is invalid or the user does not have a password.':
        return ApiError.incorrectPassword;
      case 'The email address is already in use by another account.':
        return ApiError.userAlreadyExists;
      case 'There is no user record corresponding to this identifier. The user may have been deleted.':
        return ApiError.userDosntExist;
      case 'Network error (such as timeout, interrupted connection or unreachable host) has occurred.':
        return ApiError.networkGeneral;
      default:
        return ApiError.unknownError;
    }
  }

  static ApiError errorFromCode(int code) {
    switch (code) {
      case 402:
        return ApiError.unknownError;
      default:
        return ApiError.unknownError;
    }
  }

  static Future<dynamic> errorToNotification({
    required ApiError error,
    required BuildContext context,
    String? message,
    String? title,
  }) {
    switch (error) {
      case ApiError.userAlreadyExists:
        return LocalNotificationService.errorFactory(
          title: 'Sign Up Failure',
          msg: 'User already exists!',
          duration: const Duration(seconds: 3),
        ).show(context);
      case ApiError.networkGeneral:
        return LocalNotificationService.errorFactory(
          title: 'Network Error',
          msg: 'Please check your network connection!',
          duration: const Duration(seconds: 3),
        ).show(context);
      case ApiError.userDosntExist:
        return LocalNotificationService.errorFactory(
          title: title!,
          msg: message!,
          duration: const Duration(seconds: 3),
        ).show(context);
      case ApiError.unknownError:
        return LocalNotificationService.errorFactory(
          title: 'Unknown Error',
          msg: 'Please report this problem if the issue persists!',
          duration: const Duration(seconds: 3),
        ).show(context);
      case ApiError.incorrectPassword:
        return LocalNotificationService.errorFactory(
          title: title!,
          msg: message!,
          duration: const Duration(seconds: 3),
        ).show(context);

      // ignore: no_default_cases
      default:
        return LocalNotificationService.errorFactory(
          title: 'Unknown Error',
          msg: 'Please report this problem if the issue persists!',
          duration: const Duration(seconds: 3),
        ).show(context);
    }
  }
}
