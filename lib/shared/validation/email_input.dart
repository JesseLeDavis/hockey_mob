import 'package:hockey_mob/infrastructure/helpers/extensions/string_extensions.dart';
import 'package:formz/formz.dart';

enum EmailInputError { invalid }

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    if (!value.isEmail) {
      return EmailInputError.invalid;
    }

    return null;
  }
}

extension EmailInputErrorExtension on EmailInput {
  String? get errorMessage {
    if (isPure) return null;
    switch (error) {
      case EmailInputError.invalid:
        return 'This email has an invalid format';
      case null:
        return null;
    }
  }
}
