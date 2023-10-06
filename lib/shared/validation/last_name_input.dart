import 'package:formz/formz.dart';

enum LastNameInputError {
  empty,
  invalid,
}

class LastNameInput extends FormzInput<String, LastNameInputError> {
  const LastNameInput.pure() : super.pure('');

  const LastNameInput.dirty({String value = ''}) : super.dirty(value);
  static final RegExp pattern = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
  @override
  LastNameInputError? validator(String value) {
    if (!value.isNotEmpty) {
      return LastNameInputError.empty;
    } else if (pattern.hasMatch(value)) {
      return LastNameInputError.invalid;
    }

    return null;
  }
}

extension LastNameInputExtension on LastNameInput {
  String? get errorMessage {
    if (isPure) return null;
    switch (error) {
      case LastNameInputError.empty:
        return 'Please enter a last name';
      case LastNameInputError.invalid:
        return 'Please enter a valid last name';
      case null:
        return null;
    }
  }
}
