// ignore_for_file: lines_longer_than_80_chars
class GetMethodInfo {
  /// [methodsDeep] is how deep of methods that you want to return
  ///
  /// defaults to 0, which returns the current method
  /// 1 returns the method above, etc
  factory GetMethodInfo([int methodsDeep = 0]) {
    final _methodIndex = methodsDeep + 1;
    final trace = StackTrace.current;
    /* The trace comes with multiple lines of strings, (each line is also known as a frame), so split the trace's string by lines to get all the frames */
    final frames = trace.toString().split('\n')
      ..remove('<asynchronous suspension>');

    final _currentMethod = frames[_methodIndex];
    if (_currentMethod == '') return const GetMethodInfo.empty();
    final _callerMethod = (_methodIndex + 1) > (frames.length - 1)
        ? null
        : frames[_methodIndex + 1];

    /* The first frame is the current function */
    final functionName = _getFunctionNameFromFrame(_currentMethod);

    /* The second frame is the caller function */
    var callerFunctionName = '';
    if (_callerMethod != null) {
      callerFunctionName = (_methodIndex + 1) > (frames.length - 1)
          ? ''
          : _getFunctionNameFromFrame(frames[_methodIndex + 1]);
    }

    /* Search through the string and find the index of the file name by looking for the '.dart' regex */
    final indexOfFileName = _currentMethod.indexOf(RegExp(r'[^/]+$'));

    final fileInfo = _currentMethod.substring(indexOfFileName);

    final listOfInfos = fileInfo.split(':');

    /* Splitting fileInfo by the character ':' separates the file name, the line number and the column counter nicely.
      Example: main.dart:5:12
      To get the file name, we split with ':' and get the first index
      To get the line number, we would have to get the second index
      To get the column number, we would have to get the third index
    */
    final fileName = listOfInfos[0];

    return GetMethodInfo._(
      fileName: fileName,
      functionName: functionName,
      callerFunctionName: callerFunctionName,
    );
  }

  const GetMethodInfo._({
    required this.fileName,
    required this.functionName,
    required this.callerFunctionName,
  });

  const GetMethodInfo.empty()
      : this._(
          fileName: '',
          functionName: '',
          callerFunctionName: '',
        );

  final String fileName;
  final String functionName;
  final String callerFunctionName;

  static String _getFunctionNameFromFrame(String frame) {
    if (frame == '') return '';
    /* Just giving another nickname to the frame */
    final currentTrace = frame;

    /* To get rid off the #number thing, get the index of the first whitespace */
    var indexOfWhiteSpace = currentTrace.indexOf(' ');

    /* Create a substring from the first whitespace index till the end of the string */
    var subStr = currentTrace.substring(indexOfWhiteSpace);

    /* Grab the function name using reg expr */
    final indexOfFunction = subStr.indexOf(RegExp(r'\b[A-Za-z0-9]?'));
    if (indexOfFunction == -1) return '';

    /* Create a new substring from the function name index till the end of string */
    subStr = subStr.substring(indexOfFunction);

    indexOfWhiteSpace = subStr.indexOf(' ');
    if (indexOfWhiteSpace == -1) return '';

    /* Create a new substring from start to the first index of a whitespace. This substring gives us the function name */
    return subStr.substring(0, indexOfWhiteSpace);
  }

  @override
  String toString() {
    final invoked = functionName != ''
        ? 'Invoked: $functionName (located in $fileName)'
        : '';
    final caller =
        callerFunctionName != '' ? ', Called From: $callerFunctionName' : '';

    if (invoked == '' && caller == '') return 'Could not get method info';
    return '$invoked$caller';
  }
}
