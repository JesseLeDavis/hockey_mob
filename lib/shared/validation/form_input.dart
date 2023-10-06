import 'package:formz/formz.dart';

enum FormInputError { empty }

class FormInput extends FormzInput<String, FormInputError> {
  const FormInput.pure() : super.pure('');

  const FormInput.dirty({String value = ''}) : super.dirty(value);

  @override
  FormInputError? validator(String value) {
    if (value.isEmpty) {
      return FormInputError.empty;
    }

    return null;
  }
}

extension FormInputErrorExtension on FormInput {
  String? get errorMessage {
    if (isPure) return null;

    switch (error) {
      case FormInputError.empty:
        return 'Cannot be empty';
      case null:
        return null;
    }
  }
}
