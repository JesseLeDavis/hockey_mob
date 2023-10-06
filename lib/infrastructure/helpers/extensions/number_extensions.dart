// Flutter imports:
import 'package:flutter/material.dart';

extension NumberExtension on num {
  ///reduces the current number to the min decimal place
  num reduceDecimal([int maxDecimalCount = 1]) {
    if (maxDecimalCount == 0) return toInt();
    return isInt ? toInt() : double.parse(toStringAsFixed(maxDecimalCount));
  }

  String setDecimal([int decimalCount = 2]) {
    return toStringAsFixed(decimalCount);
  }

  double toCentimeters() {
    return this * 2.54;
  }

  String monetizeResults([String? currencySymbol]) {
    final symbol = currencySymbol ?? r'$';
    return '$symbol${round().toStringAsFixed(0)}';
  }

  String monetize([String? currencySymbol]) {
    final symbol = currencySymbol ?? r'$';
    return '$symbol${toStringAsFixed(2)}';
  }

  String fromMilitaryTime(BuildContext context) {
    final timeString = (this / 100.0).toStringAsFixed(2);

    final hour = int.parse(timeString.substring(0, timeString.indexOf('.')));
    final minutes =
        int.parse(timeString.substring(timeString.indexOf('.') + 1));

    final timeOfDay = TimeOfDay(hour: hour, minute: minutes);
    return timeOfDay.format(context);
  }

  bool get isInt {
    final isInt = this is int;
    if (isInt) return true;

    final roundedInt = roundToDouble() == this;
    if (roundedInt) return true;

    return false;
  }

  String toStringFraction({
    bool allowThirds = true,
    bool allowQuarters = true,
    bool allowEights = true,
    bool allowZero = true,
  }) =>
      _toFraction<String>(
        allowEights: allowEights,
        allowQuarters: allowQuarters,
        allowThirds: allowThirds,
        allowZero: allowZero,
      );
  num cleanRound({
    bool allowThirds = true,
    bool allowQuarters = true,
    bool allowEights = true,
    bool allowZero = true,
  }) =>
      _toFraction<num>(
        allowEights: allowEights,
        allowQuarters: allowQuarters,
        allowThirds: allowThirds,
        allowZero: allowZero,
      );

  T _toFraction<T>({
    bool allowThirds = true,
    bool allowQuarters = true,
    bool allowEights = true,
    bool allowZero = true,
  }) {
    String? mixedFractionStr;
    num? mixedFractionNum;

    // CHECK FOR A MIXED FRACTION
    final wholeNumber = floorToDouble();
    var remainder = this - wholeNumber;

    // CHECK FOR 1/3
    if (remainder > .25 && remainder < .5 && allowThirds) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1/3' : '${wholeNumber.toInt()} 1/3';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .3;
      }
      // if we can't do thirds, convert it to quarters
    } else if (remainder > .25 && remainder < .5 && !allowThirds) {
      final _low = remainder - .25;
      final _high = .5 - remainder;
      const _middle = .5 - .25;

      if (_middle - _low < _high - _middle) {
        remainder = .25;
      } else {
        remainder = .5;
      }
    }
    // CHECK FOR 2/3's
    else if (remainder > .5 && remainder < .75 && allowThirds) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '2/3' : '${wholeNumber.toInt()} 2/3';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .6;
      }
    } else if (remainder > .5 && remainder < .75 && !allowThirds) {
      final _low = remainder - .25;
      final _high = .5 - remainder;
      const _middle = .5 - .25;

      if (_middle - _low < _high - _middle) {
        remainder = .5;
      } else {
        remainder = .75;
      }
    }

    // CHECK FOR HIGH OR LOW NUMBERS
    else if (remainder < .125 || remainder > .75) {
      switch (T) {
        case String:
          mixedFractionStr = '${(wholeNumber + remainder.round()).toInt()}';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + remainder.round();
      }
    }
    // CHECK FOR MISSED NUMBERS
    else if (remainder > .125 && remainder < .25) {
      switch (T) {
        case String:
          if (allowQuarters) {
            mixedFractionStr = '$wholeNumber 1/4';
          } else if (allowThirds) {
            mixedFractionStr = '$wholeNumber 1/3';
          }
          break;
        case num:
        default:
          if (allowQuarters) {
            mixedFractionNum = wholeNumber + .25;
          } else if (allowThirds) {
            mixedFractionNum = wholeNumber + .3;
          }
      }
    }

// CHECK FOR 1/8's
    if (remainder == .125 && allowEights) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1/8' : '${wholeNumber.toInt()} 1/8';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .125;
      }
    } else if (remainder == .125 && !allowEights) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '0' : '${wholeNumber.toInt()}';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber;
      }
    }

    //CHECK FOR 1/4
    else if (remainder == .25 && allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1/4' : '${wholeNumber.toInt()} 1/4';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .25;
      }
    } else if (remainder == .25 && !allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '0' : '${wholeNumber.toInt()}';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber;
      }
    }

    //CHECK FOR 1/2
    else if (remainder == .5 && allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1/2' : '${wholeNumber.toInt()} 1/2';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .5;
      }
    } else if (remainder == .5 && !allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1' : '${wholeNumber.toInt() + 1}';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + 1;
      }
    }

    //CHECK FOR 3/4
    else if (remainder == .75 && allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '3/4' : '${wholeNumber.toInt()} 3/4';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + .75;
      }
    } else if (remainder == .75 && !allowQuarters) {
      switch (T) {
        case String:
          mixedFractionStr =
              wholeNumber.toInt() == 0 ? '1' : '${wholeNumber.toInt() + 1}';
          break;
        case num:
        default:
          mixedFractionNum = wholeNumber + 1;
      }
    } else if ((mixedFractionStr == '0' && !allowZero) ||
        (mixedFractionNum == 0 && !allowZero)) {
      if (allowEights) {
        switch (T) {
          case String:
            mixedFractionStr = '1/8';
            break;
          case num:
          default:
            mixedFractionNum = .125;
        }
      } else if (allowQuarters) {
        switch (T) {
          case String:
            mixedFractionStr = '1/4';
            break;
          case num:
          default:
            mixedFractionNum = .25;
        }
      } else if (allowThirds) {
        switch (T) {
          case String:
            mixedFractionStr = '1/3';
            break;
          case num:
          default:
            mixedFractionNum = .3;
        }
      } else {
        switch (T) {
          case String:
            mixedFractionStr = '1';
            break;
          case num:
          default:
            mixedFractionNum = 1;
        }
      }
    }
    switch (T) {
      case String:
        // someone was able to hit null here!
        return mixedFractionStr as T;
      case num:
      default:
        return mixedFractionNum as T;
    }
  }

  String get dayNameAbr {
    assert(this < 7, 'must be within days of week');
    assert(this >= 0, 'must be greater than or equal to 0');
    return _dayAbrList[toInt()];
  }

  String get dayName {
    assert(this < 7, 'must be within days of week');
    assert(this >= 0, 'must be greater than or equal to 0');
    return _dayList[toInt()];
  }

  String get monthNameAbr {
    assert(this < 12, 'must be within months of year');
    assert(this >= 0, 'must be greater than or equal to 0');
    return _monthAbrList[toInt()];
  }

  String get monthName {
    assert(this < 12, 'must be within months of year');
    assert(this >= 0, 'must be greater than or equal to 0');
    return _monthList[toInt()];
  }
}

const List<String> _dayAbrList = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];

const List<String> _dayList = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];

const List<String> _monthList = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];
const List<String> _monthAbrList = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];
