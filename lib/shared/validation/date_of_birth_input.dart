import 'package:flutter_project_template_firebase/infrastructure/helpers/extensions/string_extensions.dart';
import 'package:formz/formz.dart';

enum DateOfBirthInputError { empty, invalid, young }

class DateOfBirthInput extends FormzInput<String, DateOfBirthInputError> {
  const DateOfBirthInput.pure() : super.pure('');

  const DateOfBirthInput.dirty({String value = ''}) : super.dirty(value);

  @override
  DateOfBirthInputError? validator(String value) {
    if (value.length < 10 && value.isNotEmpty) {
      return DateOfBirthInputError.invalid;
    } else if (value.length == 10) {
      final dateArray = value.split('/');
      final newValue = '${dateArray[1]}/${dateArray[0]}/${dateArray[2]}';
      final dob = newValue.isValidDate();
      if (dob == null ||
          DateTime.now().difference(dob).abs().inDays > 36500 ||
          dob.year > DateTime.now().year) {
        return DateOfBirthInputError.invalid;
      } else if (!_isAdult(dob)) {
        return DateOfBirthInputError.young;
      }

      return null;
    }

    return DateOfBirthInputError.invalid;
  }

  bool _isAdult(DateTime dob) {
    final today = DateTime.now();
    // Date to check but moved 18 years ahead
    final adultDate = DateTime(
      dob.year + 18,
      dob.month,
      dob.day,
    );

    return adultDate.isBefore(today);
  }
}

extension DateOfBirthErrorExtention on DateOfBirthInput {
  String? get errorMessage {
    if (pure) return null;

    switch (error) {
      case DateOfBirthInputError.empty:
        return 'Please enter a date of birth';
      case DateOfBirthInputError.invalid:
        return 'Enter a valid date of birth';
      case DateOfBirthInputError.young:
        return 'You must be 18 or older';
      case null:
        return null;
    }
  }
}
