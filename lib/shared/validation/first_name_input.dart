import 'package:formz/formz.dart';

enum FirstNameInputError {
  empty,
  invalid,
}

class FirstNameInput extends FormzInput<String, FirstNameInputError> {
  const FirstNameInput.pure() : super.pure('');

  const FirstNameInput.dirty({String value = ''}) : super.dirty(value);
  static final RegExp pattern = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
  @override
  FirstNameInputError? validator(String value) {
    if (!value.isNotEmpty) {
      return FirstNameInputError.empty;
    } else if (pattern.hasMatch(value)) {
      return FirstNameInputError.invalid;
    }

    return null;
  }
}

extension FirstNameInputExtension on FirstNameInput {
  String? get errorMessage {
    if (pure) return null;
    switch (error) {
      case FirstNameInputError.empty:
        return 'Please enter a first name';
      case FirstNameInputError.invalid:
        return 'Please enter a valid first name';
      case null:
        return null;
    }
  }
}
