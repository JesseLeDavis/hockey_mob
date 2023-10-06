import 'package:flutter/material.dart';

{{#viewIsStateless}}

class {{filename.pascalCase()}}View extends StatelessWidget {
  const {{filename.pascalCase()}}View({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

{{/viewIsStateless}}
{{^viewIsStateless}}


class {{filename.pascalCase()}}View extends StatefulWidget {
  const {{filename.pascalCase()}}View({
    Key? key,
  }) : super(key: key);

  @override
  State<{{filename.pascalCase()}}View> createState() =>
      _{{filename.pascalCase()}}State();
}

class _{{filename.pascalCase()}}State
    extends State<{{filename.pascalCase()}}View> {



  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
{{/viewIsStateless}}
