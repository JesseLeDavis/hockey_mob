import 'package:formz/formz.dart';

enum PasswordInputError { short, invalid }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.length < 12 ||
        value.isEmpty ||
        !value.contains(
          RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>`~+_|^=;-])[A-Za-z\d!@#$%^&*(),.?":{}|<>`~+_|^=;-]{8,}$',
          ),
        )) {
      return PasswordInputError.short;
    }
    return null;
  }
}

extension PasswordInputExtension on PasswordInput {
  String? get errorMessage {
    if (isPure) return null;
    switch (error) {
      case PasswordInputError.invalid:
        return '';
      case PasswordInputError.short:
        return '';
      case null:
        return null;
    }
  }
}
